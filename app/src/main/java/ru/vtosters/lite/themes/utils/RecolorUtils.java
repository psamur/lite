package ru.vtosters.lite.themes.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.vk.core.drawable.RecoloredDrawable;
import ru.vtosters.lite.themes.ColorReferences;
import ru.vtosters.lite.utils.AndroidUtils;
import ru.vtosters.lite.utils.ThemesUtils;

public class RecolorUtils {

    public static int recolorHexColor(int i){
        var accented = ColorReferences.isAccentedColor(i);
        var mutedaccented = ColorReferences.isMutedAccentedColor(i);
        return (accented || mutedaccented) ? (accented ? ThemesUtils.getAccentColor() : ThemesUtils.getMutedAccentColor()) : i;
    }

    @SuppressLint("UseCompatLoadingForColorStateLists")
    public static ColorStateList themeCSL(Context context, int color) {
        if (ColorReferences.isColorRefAccented(color)) {
            return ColorStateList.valueOf(ThemesUtils.getAccentColor());
        } else if (ColorReferences.isColorRefMutedAccented(color)) {
            return ColorStateList.valueOf(ThemesUtils.getMutedAccentColor());
        }

        ColorStateList csl;

        if (Build.VERSION.SDK_INT >= 23) {
            csl = context.getColorStateList(color);
        } else {
            csl = context.getResources().getColorStateList(color);
        }

        return themeCSL(csl);
    } // Recolor ColorStateList

    public static ColorStateList themeCSL(ColorStateList csl){
        try {
            int unsel = csl.getColorForState(new int[]{-android.R.attr.state_selected}, Color.BLACK);
            int sel = csl.getColorForState(new int[]{android.R.attr.state_selected}, Color.BLACK);
            int enabled = csl.getColorForState(new int[]{android.R.attr.state_enabled}, Color.BLACK);
            int disabled = csl.getColorForState(new int[]{-android.R.attr.state_enabled}, Color.BLACK);

            boolean isUnselAccent = ColorReferences.isAccentedColor(unsel);
            boolean isSelAccent = ColorReferences.isAccentedColor(sel);
            boolean isEnabledAccent = ColorReferences.isAccentedColor(enabled);
            boolean isDisabledAccent = ColorReferences.isAccentedColor(disabled);

            boolean isUnselMutedAccent = ColorReferences.isMutedAccentedColor(unsel);
            boolean isSelMutedAccent = ColorReferences.isMutedAccentedColor(sel);
            boolean isEnabledMutedAccent = ColorReferences.isMutedAccentedColor(enabled);
            boolean isDisabledMutedAccent = ColorReferences.isMutedAccentedColor(disabled);

            if (isUnselAccent || isSelAccent || isUnselMutedAccent || isSelMutedAccent) {
                return new ColorStateList(new int[][]{
                        new int[]{android.R.attr.state_selected}, new int[]{-android.R.attr.state_selected}
                }, new int[]{(isSelAccent || isSelMutedAccent) ? (isSelAccent ? ThemesUtils.getAccentColor() : ThemesUtils.getMutedAccentColor()) : sel, (isUnselAccent || isUnselMutedAccent) ? (isUnselAccent ? ThemesUtils.getAccentColor() : ThemesUtils.getMutedAccentColor()) : unsel});
            }

            if (isDisabledAccent || isEnabledAccent || isEnabledMutedAccent || isDisabledMutedAccent) {
                return new ColorStateList(new int[][]{
                        new int[]{android.R.attr.state_enabled}, new int[]{-android.R.attr.state_enabled}
                }, new int[]{(isEnabledAccent || isEnabledMutedAccent) ? (isEnabledAccent ? ThemesUtils.getAccentColor() : ThemesUtils.getMutedAccentColor()) : enabled, (isDisabledAccent || isDisabledMutedAccent) ? (isDisabledAccent ? ThemesUtils.getAccentColor() : ThemesUtils.getMutedAccentColor()) : disabled});
            }

            return csl;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
