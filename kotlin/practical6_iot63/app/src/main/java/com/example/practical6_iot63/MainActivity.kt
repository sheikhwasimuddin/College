package com.example.practical6_iot63

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

class MainActivity : AppCompatActivity() {

    lateinit var recyclerView: RecyclerView

    val languages = arrayOf(
        "Hindi",
        "English",
        "Bengali",
        "Telugu",
        "Marathi",
        "Tamil",
        "Urdu",
        "Gujarati",
        "Kannada",
        "Odia",
        "Malayalam",
        "Punjabi",
        "Assamese",
        "Maithili",
        "Sanskrit",
        "Konkani",
        "Manipuri",
        "Bodo",
        "Dogri",
        "Santali",
        "Kashmiri",
        "Sindhi",
        "Nepali"
    )

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.activity_main)

        recyclerView = findViewById(R.id.recyclerView)

        recyclerView.layoutManager = LinearLayoutManager(this)

        val adapter = LanguageAdapter(languages)

        recyclerView.adapter = adapter
    }
}