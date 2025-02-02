package ru.vtosters.lite.utils;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.os.Environment;
import android.util.Log;
import com.vk.usersstore.contentprovider.a.UsersDbHelper;
import com.vtosters.lite.auth.VKAuth;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class VKAccountDB {
    private static SQLiteOpenHelper getDatabase() {
        return new UsersDbHelper(AndroidUtils.getGlobalContext());
    }

    @SuppressLint("Range")
    public static void copyDatabase(SQLiteDatabase db1, SQLiteDatabase db2) {
        try {
            Cursor cursor = db1.query("users", null, null, null, null, null, null);

            while (cursor.moveToNext()) {
                int user_id = cursor.getInt(cursor.getColumnIndex("user_id"));
                String name = cursor.getString(cursor.getColumnIndex("name"));
                String avatar = cursor.getString(cursor.getColumnIndex("avatar"));
                String exchange_token = cursor.getString(cursor.getColumnIndex("exchange_token"));
                long timestamp = cursor.getLong(cursor.getColumnIndex("timestamp"));

                ContentValues values = new ContentValues();
                values.put("user_id", user_id);
                values.put("name", name);
                values.put("avatar", avatar);
                values.put("exchange_token", exchange_token);
                values.put("timestamp", timestamp);
                values.put("logged_in", false);

                db2.insert("users", null, values);
            }

            cursor.close();
        } catch (Exception e) {
            Log.d("VKAccountDB", e.getMessage());
        }
    }

    public static void saveDatabase(Uri uri) {
        var path = AndroidUtils.getRealPathFromURI(uri);

        if (path == null) AndroidUtils.sendToast("No path");

        SQLiteDatabase db = SQLiteDatabase.openDatabase(path, null, SQLiteDatabase.OPEN_READONLY);
        copyDatabase(db, getDatabase().getWritableDatabase());
        db.close();

        LifecycleUtils.restartApplicationWithTimer();
    }

    public static void saveData() {
        var db = getDatabase().getReadableDatabase();
        var dateFormat = new SimpleDateFormat("yyyy-MM-dd.HH-mm-ss", Locale.getDefault());
        var file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS) + "/VTLBackups/saved_accounts_" + dateFormat.format(new Date()) + ".vtl");

        InputStream inputStream;
        try {
            inputStream = new FileInputStream(db.getPath());

            FileOutputStream outputStream = new FileOutputStream(file);
            byte[] buff = new byte[1024];
            int read;
            while ((read = inputStream.read(buff, 0, buff.length)) > 0)
                outputStream.write(buff, 0, read);
            inputStream.close();
            outputStream.close();

            AndroidUtils.sendToast( AndroidUtils.getString("accounts_saved_by_path") + " " + file.getPath());
        } catch (IOException e) {
            e.printStackTrace();
            AndroidUtils.sendToast(AndroidUtils.getString("error_saving_file"));
        }
    }

    public static void resetData() {
        SQLiteDatabase db = getDatabase().getWritableDatabase();
        db.execSQL("DELETE FROM users");
        db.close();

        VKAuth.a("logout", false);

        LifecycleUtils.restartApplicationWithTimer();
    }
}
