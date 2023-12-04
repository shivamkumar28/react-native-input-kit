package com.inputkit

import android.view.View

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.viewmanagers.InputKitViewManagerDelegate
import com.facebook.react.viewmanagers.InputKitViewManagerInterface

abstract class InputKitViewManagerSpec<T : View> : SimpleViewManager<T>(), InputKitViewManagerInterface<T> {
  private val mDelegate: ViewManagerDelegate<T>

  init {
    mDelegate = InputKitViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<T>? {
    return mDelegate
  }
}
