package com.rezaalamsyah.simpleapp.utils

import android.content.Context

class PreferenceManager(context: Context) {
    private val contextMode = Context.MODE_PRIVATE
    private var pref = context.getSharedPreferences("MIH_PREFS", contextMode)
    private var editor = pref.edit()

    var prefLogedIn: Boolean
        get() {
            return pref.getBoolean("SIMPLE_APP_LOGGED_IN", false)
        }
        set(value) {
            editor.putBoolean("SIMPLE_APP_LOGGED_IN", value).apply()
        }

    fun clearPreferences() {
        editor.clear().commit()
    }

}