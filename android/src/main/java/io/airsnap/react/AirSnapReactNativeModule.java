package io.airsnap.react;

import android.app.Activity;

import androidx.annotation.NonNull;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.modules.network.NetworkingModule;

import io.airsnap.sdk.AirSnap;
import io.airsnap.sdk.AirsnapConfig;
import io.airsnap.sdk.network.AirsnapInterceptor;

@ReactModule(name = AirSnapReactNativeModule.NAME)
public class AirSnapReactNativeModule extends ReactContextBaseJavaModule {
    public static final String NAME = "AirSnapReactNative";

    public AirSnapReactNativeModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    @NonNull
    public String getName() {
        return NAME;
    }


    // Example method
    // See https://reactnative.dev/docs/native-modules-android
    @ReactMethod
    public void start(ReadableMap rnOptions, Promise promise) {
        Activity activity = getCurrentActivity();
        String key = rnOptions.hasKey("key") ? rnOptions.getString("key") : "";
        AirsnapConfig config = new AirsnapConfig(key);
        NetworkingModule.setCustomClientBuilder(builder -> builder.addNetworkInterceptor(new AirsnapInterceptor()));
        AirSnap.start(activity, config);
        promise.resolve(true);
    }
}
