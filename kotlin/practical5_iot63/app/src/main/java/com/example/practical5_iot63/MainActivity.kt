package com.example.practical5_iot63

import android.os.Bundle
import android.widget.*
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {

    lateinit var name: EditText
    lateinit var roll: EditText
    lateinit var dept: EditText
    lateinit var submit: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        name = findViewById(R.id.etName)
        roll = findViewById(R.id.etRoll)
        dept = findViewById(R.id.etDept)
        submit = findViewById(R.id.btnSubmit)

        submit.setOnClickListener {

            val studentName = name.text.toString()
            val studentRoll = roll.text.toString()
            val studentDept = dept.text.toString()

            Toast.makeText(
                this,
                "Name: $studentName\nRoll: $studentRoll\nDept: $studentDept",
                Toast.LENGTH_LONG
            ).show()
        }
    }
}