# JavaScript-Bridge-Methoden nicht entfernen/umbenennen
-keepclassmembers class com.neon.tetris.MainActivity$Bridge {
    @android.webkit.JavascriptInterface <methods>;
}
-keepattributes JavascriptInterface
