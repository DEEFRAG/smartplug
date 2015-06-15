.class public Lcom/kankunit/smartplugcronus/util/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseGrammarResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v6, "ret":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v7, Lorg/json/JSONTokener;

    invoke-direct {v7, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 41
    .local v7, "tokener":Lorg/json/JSONTokener;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 43
    .local v4, "joResult":Lorg/json/JSONObject;
    const-string v9, "ws"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 44
    .local v8, "words":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-lt v1, v9, :cond_0

    .line 63
    .end local v1    # "i":I
    .end local v4    # "joResult":Lorg/json/JSONObject;
    .end local v7    # "tokener":Lorg/json/JSONTokener;
    .end local v8    # "words":Lorg/json/JSONArray;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    return-object v9

    .line 45
    .restart local v1    # "i":I
    .restart local v4    # "joResult":Lorg/json/JSONObject;
    .restart local v7    # "tokener":Lorg/json/JSONTokener;
    .restart local v8    # "words":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "cw"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 46
    .local v2, "items":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v3, v9, :cond_1

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 49
    .local v5, "obj":Lorg/json/JSONObject;
    const-string v9, "w"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "nomatch"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 51
    const-string v9, "No matching results."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 54
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Results]"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "w"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Confidence]"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "sc"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 59
    .end local v1    # "i":I
    .end local v2    # "items":Lorg/json/JSONArray;
    .end local v3    # "j":I
    .end local v4    # "joResult":Lorg/json/JSONObject;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v7    # "tokener":Lorg/json/JSONTokener;
    .end local v8    # "words":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const-string v9, "No matching results."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static parseIatResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 13
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 15
    .local v5, "ret":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v6, Lorg/json/JSONTokener;

    invoke-direct {v6, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 16
    .local v6, "tokener":Lorg/json/JSONTokener;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 18
    .local v3, "joResult":Lorg/json/JSONObject;
    const-string v8, "ws"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 19
    .local v7, "words":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-lt v1, v8, :cond_0

    .line 34
    .end local v1    # "i":I
    .end local v3    # "joResult":Lorg/json/JSONObject;
    .end local v6    # "tokener":Lorg/json/JSONTokener;
    .end local v7    # "words":Lorg/json/JSONArray;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 21
    .restart local v1    # "i":I
    .restart local v3    # "joResult":Lorg/json/JSONObject;
    .restart local v6    # "tokener":Lorg/json/JSONTokener;
    .restart local v7    # "words":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "cw"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 22
    .local v2, "items":Lorg/json/JSONArray;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 23
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v8, "w"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v1    # "i":I
    .end local v2    # "items":Lorg/json/JSONArray;
    .end local v3    # "joResult":Lorg/json/JSONObject;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "tokener":Lorg/json/JSONTokener;
    .end local v7    # "words":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
