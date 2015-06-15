.class public Lorg/videolan/vlc/util/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/Util/Preferences"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFloatArray(Landroid/content/SharedPreferences;Ljava/lang/String;)[F
    .locals 7
    .param p0, "pref"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "array":[F
    const/4 v5, 0x0

    invoke-interface {p0, p1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 37
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 38
    .local v3, "json":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v0, v5, [F

    .line 39
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-lt v2, v5, :cond_1

    .line 45
    .end local v2    # "i":I
    .end local v3    # "json":Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-object v0

    .line 40
    .restart local v2    # "i":I
    .restart local v3    # "json":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v0, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    .end local v2    # "i":I
    .end local v3    # "json":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static putFloatArray(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;[F)V
    .locals 7
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "array"    # [F

    .prologue
    .line 50
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 51
    .local v2, "json":Lorg/json/JSONArray;
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 53
    const-string v3, "equalizer_values"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    .end local v2    # "json":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 51
    .restart local v2    # "json":Lorg/json/JSONArray;
    :cond_0
    aget v1, p2, v3

    .line 52
    .local v1, "f":F
    float-to-double v5, v1

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "f":F
    .end local v2    # "json":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
