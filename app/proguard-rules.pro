# ==========================================================
# YIWALO TUN PRO - PROGUARD / R8 CONFIGURATION
# ==========================================================

# ── Stack traces ──────────────────────────────────────────
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile
-keepattributes Signature,*Annotation*,Exceptions,InnerClasses,EnclosingMethod

# ── Gson / JSON ───────────────────────────────────────────
-keep class com.google.gson.** { *; }
-keep class * implements com.google.gson.TypeAdapterFactory { *; }
-keep class * implements com.google.gson.JsonSerializer { *; }
-keep class * implements com.google.gson.JsonDeserializer { *; }

# Modèles de données utilisés par Gson
-keep class com.dave_cli.proxybox.data.db.** { *; }
-keep class com.dave_cli.proxybox.core.UpdateResult { *; }
-keep class com.dave_cli.proxybox.ui.main.IpCheckResult { *; }

# ── Room Database ─────────────────────────────────────────
-keep class * extends androidx.room.RoomDatabase { *; }
-keep @androidx.room.Entity class * { *; }
-keep @androidx.room.Dao interface * { *; }

# ── Retrofit / OkHttp ─────────────────────────────────────
-keep class retrofit2.** { *; }
-keep interface retrofit2.** { *; }
-keepattributes RuntimeVisibleAnnotations,RuntimeInvisibleAnnotations,AnnotationDefault
-dontwarn retrofit2.**
-dontwarn okhttp3.**
-dontwarn okio.**

# ── Xray / V2Ray ──────────────────────────────────────────
-keep class libv2ray.** { *; }
-keep class go.** { *; }
-keep class Libv2ray.** { *; }

# ── HEV SOCKS5 / TUN2SOCKS ─────────────────────────────────
-keep class hev.htproxy.** { *; }

# ── NanoHTTPD ──────────────────────────────────────────────
-keep class fi.iki.elonen.** { *; }

# ── ZXing / QR Code ────────────────────────────────────────
-keep class com.google.zxing.** { *; }
-keep class com.journeyapps.barcodescanner.** { *; }

# ── Widgets Android ────────────────────────────────────────
-keep class com.dave_cli.proxybox.widget.VpnWidgetProvider { *; }
-keep class com.dave_cli.proxybox.widget.VpnSmallWidgetProvider { *; }

# ── Broadcast Receivers ───────────────────────────────────
-keep class com.dave_cli.proxybox.core.BootReceiver { *; }

# ── VPN Service ────────────────────────────────────────────
-keep class com.dave_cli.proxybox.core.CoreService { *; }

# ── Preserve native method names ───────────────────────────
-keepclasseswithmembernames class * {
    native <methods>;
}

# ── Preserve enum members ──────────────────────────────────
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# ==========================================================
# END - YIWALO TUN PRO
# ==========================================================
