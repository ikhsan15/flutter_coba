package com.rezaalamsyah.simpleapp.utils

import android.text.Editable
import android.text.TextWatcher
import android.util.Patterns
import androidx.appcompat.widget.AppCompatEditText
import java.util.regex.Pattern

fun String.isEmailValid(): Boolean = this.isNotEmpty() &&
        Patterns.EMAIL_ADDRESS.matcher(this).matches()

fun String.isPasswordValid(): Boolean = this.isNotEmpty() && this.length >= 6 &&
        (Pattern.compile("^(?=.*[a-z A-Z])(?=.*[0-9])[a-z A-Z0-9\$&+,:;=\\\\?@#|/'<>.^*()%!-]+$")
            .matcher(this).matches())

fun AppCompatEditText.textWatchers(
    beforeChanged: (() -> Unit)? = null,
    onTextChanged: ((text: String) -> Unit)? = null,
    afterChanged: (() -> Unit)? = null) {

    this.addTextChangedListener(object : TextWatcher{
        override fun beforeTextChanged(p0: CharSequence?, p1: Int, p2: Int, p3: Int) {
            beforeChanged?.invoke()
        }

        override fun onTextChanged(p0: CharSequence?, p1: Int, p2: Int, p3: Int) {
            onTextChanged?.invoke(p0.toString())
        }

        override fun afterTextChanged(p0: Editable?) {
            afterChanged?.invoke()
        }
    })
}