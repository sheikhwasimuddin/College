package com.example.practical8_iot63

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel

class CounterViewModel : ViewModel() {

    private val _counter = MutableLiveData<Int>(0)
    val counter: LiveData<Int> = _counter

    fun increaseCounter() {
        _counter.value = (_counter.value ?: 0) + 1
    }
}