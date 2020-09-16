package com.rezaalamsyah.simpleapp.ui

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Toast
import com.rezaalamsyah.simpleapp.R
import com.rezaalamsyah.simpleapp.utils.PreferenceManager
import com.rezaalamsyah.simpleapp.utils.isEmailValid
import com.rezaalamsyah.simpleapp.utils.isPasswordValid
import com.rezaalamsyah.simpleapp.utils.textWatchers
import kotlinx.android.synthetic.main.activity_main.*

class LoginActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        et_username.textWatchers(
            onTextChanged = {
                if (!it.isEmailValid()) {
                    et_username.error = "Email tidak valid"
                }
            }
        )

        et_password.textWatchers(
            onTextChanged = {
                if (!it.isPasswordValid()) {
                    et_password.error = "Password tidak valid"
                }
            }
        )

        btn_login.setOnClickListener {
            if (et_username.text.toString() != "" && et_password.text.toString() != "") {
                PreferenceManager(this).prefLogedIn = true
                val intent = Intent(this@LoginActivity, HomeActivity::class.java)
                startActivity(intent)
            } else {
                Toast.makeText(this, "Mohon masukkan data", Toast.LENGTH_SHORT).show()
            }
        }

        //TODO:: IMPROVE AND ENHANCE LOGIN VALIDATION MORE SPECIFIC, FOR EXAMPLE: WHAT IF DISABLE BUTTON WHEN EDIT TEXT ARE STILL EMPTY?
    }
}