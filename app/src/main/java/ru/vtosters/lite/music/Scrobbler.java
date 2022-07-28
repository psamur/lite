package ru.vtosters.lite.music;
import static java.lang.String.*;
import static java.lang.String.valueOf;
import static ru.vtosters.lite.utils.AndroidUtils.MD5;
import static ru.vtosters.lite.utils.AndroidUtils.edit;
import static ru.vtosters.lite.utils.AndroidUtils.getDefaultPrefs;
import static ru.vtosters.lite.utils.AndroidUtils.getPreferences;
import static ru.vtosters.lite.utils.AndroidUtils.sendToast;

import android.util.Log;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

import ru.vtosters.lite.net.NetCall;
import ru.vtosters.lite.net.NetCallback;
import ru.vtosters.lite.net.NetClient;
import ru.vtosters.lite.net.NetRequest;
import ru.vtosters.lite.net.NetResponse;
import ru.vtosters.lite.utils.Preferences;

public class Scrobbler{
    private static final String key = "5965d63402414776c54c266db0211746";
    private static final String keysecret = "d982180eed13275bb948e41cf225f88f";
    private static final String url = "https://ws.audioscrobbler.com/2.0/";
    private static final NetClient client = new NetClient.Builder().build();
    private static final ArrayList<String> scrobbled = new ArrayList<>();

    public static void scrobbleTrack(long duration, String artist, String title, String uid){
        var string = getDefaultPrefs().getString("sessionKey", null);
        var timestamp = System.currentTimeMillis() / 1000;

        Log.d("Scrobbler", "scrobbleTrack: " + title + " - " + artist + " - " + duration + " - " + uid);

        if (!needToBeScrobble(uid) ||
                string == null ||
                string.isEmpty() ||
                artist == null ||
                artist.isEmpty() ||
                title == null ||
                title.isEmpty() ||
                duration == 0) return;

        scrobbled.add(uid); // add to scrobbled list

        TreeMap<String, String> treeMap = new TreeMap<>(); // create map for request
        treeMap.put("method", "track.scrobble");
        treeMap.put("sk", string);
        treeMap.put("artist[0]", artist);
        treeMap.put("track[0]", title);
        treeMap.put("timestamp[0]", valueOf(timestamp));
        treeMap.put("api_key", key);
        treeMap.put("duration[0]", valueOf(duration));
        treeMap.put("api_sig", signMD5(treeMap));
        treeMap.put("format", "json");

        client.newCall(new NetRequest.Builder().url(url).post().params(treeMap).build()).enqueue(new NetCallback(){
            @Override
            public void onFailure(NetCall call, IOException e){
                Log.d("Scrobbler", "Error: " + e.getMessage());
            }

            @Override
            public void onResponse(NetCall call, NetResponse response){
                Log.d("Scrobbler", "Scrobbled: " + artist + " - " + title);
                Log.d("Scrobbler", "Response scrobble: " + response.getDataString());
            }
        });
    }

    private static String signMD5(Map<String, String> map){
        var sb = new StringBuilder();

        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb.append(entry.getKey());
            sb.append(entry.getValue());
        }

        sb.append(keysecret);

        return MD5(sb.toString());
    }

    public static void auth(String login, String pass){
        if (login == null || pass == null) {
            sendToast("Логин или пароль не заданы");
            return;
        }

        TreeMap<String, String> treeMap = new TreeMap<>(); // create map for request
        treeMap.put("method", "auth.getMobileSession");
        treeMap.put("api_key", key);
        treeMap.put("username", login);
        treeMap.put("password", pass);
        treeMap.put("api_sig", signMD5(treeMap));
        treeMap.put("format", "json");

        client.newCall(new NetRequest.Builder().url(url).post().params(treeMap).build()).enqueue(new NetCallback(){
            @Override
            public void onFailure(NetCall call, IOException e){
                Log.d("Scrobbler", "Auth failed", e);
                sendToast("Ошибка входа");
            }

            @Override
            public void onResponse(NetCall call, NetResponse response){
                try {
                    var jSONObject = new JSONObject(response.getDataString());
                    sessionFetcher(jSONObject);
                    Log.d("Scrobbler", "Auth response " + response.getDataString());
                } catch (JSONException e) {
                    Log.d("Scrobbler", "Auth failed", e);
                }
            }
        });
    }

    public static void sessionFetcher(JSONObject jsonObject) throws JSONException{
        if (!jsonObject.has("session")) {
            Log.d("Scrobbler", "Auth failed - no session");
            return;
        }

        var session = jsonObject.getJSONObject("session");
        var name = session.getString("name");
        var key = session.getString("key");

        getDefaultPrefs().edit().putString("username", name).
                putString("sessionKey", key).apply();

        Log.d("Scrobbler", "Auth success as " + name + ", key " + key);
    }

    public static void logout(){
        edit().remove("username").apply();
        edit().remove("sessionKey").apply();
        scrobbled.clear();
        sendToast("Вы успешно вышли из учетной записи");
    }

    public static boolean needToBeScrobble(String uid){
        return isLoggedIn() && isScrobblingEnabled() && !scrobbled.contains(uid);
    }

    public static boolean isLoggedIn(){
        return getDefaultPrefs().getString("sessionKey", null) != null;
    }

    public static boolean isScrobblingEnabled(){
        return getPreferences().getBoolean("lastfm_enabled", false);
    }

    public static String getUserName(){
        return getDefaultPrefs().getString("username", null);
    }
}
