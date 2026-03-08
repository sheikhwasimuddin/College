package com.example.practical8_iot63

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.activity.viewModels
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {

    private val viewModel: CounterViewModel by viewModels()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val textCounter = findViewById<TextView>(R.id.textCounter)
        val btnIncrease = findViewById<Button>(R.id.btnIncrease)

        viewModel.counter.observe(this) {
            textCounter.text = it.toString()
        }

        btnIncrease.setOnClickListener {
            viewModel.increaseCounter()
        }
    }
}