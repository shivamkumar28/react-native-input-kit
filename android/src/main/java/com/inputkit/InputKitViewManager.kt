package com.inputkit

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp

@ReactModule(name = InputKitViewManager.NAME)
class InputKitViewManager :
  InputKitViewManagerSpec<InputKitView>() {
  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): InputKitView {
    return InputKitView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: InputKitView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "InputKitView"
  }
}
