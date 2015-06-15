.class public Lorg/apache/mina/proxy/utils/StringUtilities;
.super Ljava/lang/Object;
.source "StringUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "singleValued"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x1

    .line 339
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 341
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 343
    .restart local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 347
    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "directive"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "src":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "dst":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    .local v0, "directiveValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    return-object v0
.end method

.method public static copyDirective(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "directive"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "directives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    .local v0, "directiveValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    return-void
.end method

.method private static extractDirective(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljavax/security/sasl/SaslException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Peer sent more than one "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " directive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-void
.end method

.method public static getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "directive"    # Ljava/lang/String;
    .param p2, "mandatory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/sasl/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "directivesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 57
    if-eqz p2, :cond_0

    .line 58
    new-instance v1, Ljavax/security/sasl/AuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" mandatory directive is missing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/sasl/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_0
    const-string v0, ""

    .line 65
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 315
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 316
    const/4 v1, 0x0

    .line 324
    :goto_0
    return-object v1

    .line 319
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 320
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header with key [\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"] isn\'t single valued !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static isLws(B)Z
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 256
    sparse-switch p0, :sswitch_data_0

    .line 264
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 261
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseDirectives([B)Ljava/util/HashMap;
    .locals 13
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x3d

    const/16 v11, 0x2c

    const/16 v10, 0x22

    const/16 v8, 0xa

    .line 115
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 117
    .local v2, "gettingKey":Z
    const/4 v3, 0x0

    .line 118
    .local v3, "gettingQuotedValue":Z
    const/4 v1, 0x0

    .line 121
    .local v1, "expectSeparator":Z
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 122
    .local v5, "key":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 124
    .local v7, "value":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lorg/apache/mina/proxy/utils/StringUtilities;->skipLws([BI)I

    move-result v4

    .line 125
    .end local v3    # "gettingQuotedValue":Z
    .local v4, "i":I
    :cond_0
    :goto_0
    array-length v8, p0

    if-ge v4, v8, :cond_10

    .line 126
    aget-byte v0, p0, v4

    .line 128
    .local v0, "bch":B
    if-eqz v2, :cond_8

    .line 129
    if-ne v0, v11, :cond_2

    .line 130
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    if-eqz v8, :cond_1

    .line 131
    new-instance v8, Ljavax/security/sasl/SaslException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Directive key contains a \',\':"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 136
    :cond_1
    add-int/lit8 v8, v4, 0x1

    invoke-static {p0, v8}, Lorg/apache/mina/proxy/utils/StringUtilities;->skipLws([BI)I

    move-result v4

    goto :goto_0

    .line 137
    :cond_2
    if-ne v0, v12, :cond_5

    .line 138
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 139
    new-instance v8, Ljavax/security/sasl/SaslException;

    const-string v9, "Empty directive key"

    invoke-direct {v8, v9}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 142
    :cond_3
    const/4 v2, 0x0

    .line 143
    add-int/lit8 v8, v4, 0x1

    invoke-static {p0, v8}, Lorg/apache/mina/proxy/utils/StringUtilities;->skipLws([BI)I

    move-result v4

    .line 146
    array-length v8, p0

    if-ge v4, v8, :cond_4

    .line 147
    aget-byte v8, p0, v4

    if-ne v8, v10, :cond_0

    .line 148
    const/4 v3, 0x1

    .line 149
    .restart local v3    # "gettingQuotedValue":Z
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    .end local v3    # "gettingQuotedValue":Z
    :cond_4
    new-instance v8, Ljavax/security/sasl/SaslException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Valueless directive found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 155
    :cond_5
    invoke-static {v0}, Lorg/apache/mina/proxy/utils/StringUtilities;->isLws(B)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 157
    add-int/lit8 v8, v4, 0x1

    invoke-static {p0, v8}, Lorg/apache/mina/proxy/utils/StringUtilities;->skipLws([BI)I

    move-result v4

    .line 160
    array-length v8, p0

    if-ge v4, v8, :cond_6

    .line 161
    aget-byte v8, p0, v4

    if-eq v8, v12, :cond_0

    .line 162
    new-instance v8, Ljavax/security/sasl/SaslException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\'=\' expected after key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 166
    :cond_6
    new-instance v8, Ljavax/security/sasl/SaslException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\'=\' expected after key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 170
    :cond_7
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 173
    :cond_8
    if-eqz v3, :cond_c

    .line 175
    const/16 v8, 0x5c

    if-ne v0, v8, :cond_a

    .line 177
    add-int/lit8 v4, v4, 0x1

    .line 178
    array-length v8, p0

    if-ge v4, v8, :cond_9

    .line 179
    aget-byte v8, p0, v4

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 183
    :cond_9
    new-instance v8, Ljavax/security/sasl/SaslException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unmatched quote found for directive: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 188
    :cond_a
    if-ne v0, v10, :cond_b

    .line 190
    add-int/lit8 v4, v4, 0x1

    .line 191
    const/4 v3, 0x0

    .line 192
    .restart local v3    # "gettingQuotedValue":Z
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 194
    .end local v3    # "gettingQuotedValue":Z
    :cond_b
    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 197
    :cond_c
    invoke-static {v0}, Lorg/apache/mina/proxy/utils/StringUtilities;->isLws(B)Z

    move-result v8

    if-nez v8, :cond_d

    if-ne v0, v11, :cond_e

    .line 199
    :cond_d
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lorg/apache/mina/proxy/utils/StringUtilities;->extractDirective(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 201
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 202
    const/4 v2, 0x1

    .line 203
    const/4 v1, 0x0

    move v3, v1

    .line 204
    .local v3, "gettingQuotedValue":I
    add-int/lit8 v8, v4, 0x1

    invoke-static {p0, v8}, Lorg/apache/mina/proxy/utils/StringUtilities;->skipLws([BI)I

    move-result v4

    goto/16 :goto_0

    .line 205
    .end local v3    # "gettingQuotedValue":I
    :cond_e
    if-eqz v1, :cond_f

    .line 206
    new-instance v8, Ljavax/security/sasl/SaslException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expecting comma or linear whitespace after quoted string: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 210
    :cond_f
    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 211
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 215
    .end local v0    # "bch":B
    :cond_10
    if-eqz v3, :cond_11

    .line 216
    new-instance v8, Ljavax/security/sasl/SaslException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unmatched quote found for directive: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 221
    :cond_11
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    if-lez v8, :cond_12

    .line 222
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lorg/apache/mina/proxy/utils/StringUtilities;->extractDirective(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_12
    return-object v6
.end method

.method private static skipLws([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "start"    # I

    .prologue
    .line 277
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 278
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->isLws(B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    :cond_0
    return v0

    .line 277
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringTo8859_1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 296
    if-nez p0, :cond_0

    .line 297
    const-string v0, ""

    .line 300
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "8859_1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method
