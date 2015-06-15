.class public final Lorg/jdom/Verifier;
.super Ljava/lang/Object;
.source "Verifier.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Verifier.java,v $ $Revision: 1.55 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAttributeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p0}, Lorg/jdom/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 132
    .end local v0    # "reason":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 121
    .restart local v0    # "reason":Ljava/lang/String;
    :cond_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 122
    const-string v0, "Attribute names cannot contain colons"

    goto :goto_0

    .line 126
    :cond_1
    const-string v1, "xmlns"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    const-string v0, "An Attribute name may not be \"xmlns\"; use the Namespace class to manage namespaces"

    goto :goto_0

    .line 132
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkCDATASection(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "reason":Ljava/lang/String;
    invoke-static {p0}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    .end local v0    # "reason":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 208
    .restart local v0    # "reason":Ljava/lang/String;
    :cond_0
    const-string v1, "]]>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 209
    const-string v0, "CDATA cannot internally contain a CDATA ending delimiter (]]>)"

    goto :goto_0

    .line 214
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkCharacterData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const v7, 0xdc00

    const v6, 0xd800

    .line 154
    if-nez p0, :cond_0

    .line 155
    const-string v4, "A null is not a legal XML value"

    .line 191
    :goto_0
    return-object v4

    .line 159
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 161
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 164
    .local v0, "ch":I
    if-lt v0, v6, :cond_3

    const v4, 0xdbff

    if-gt v0, v4, :cond_3

    .line 166
    add-int/lit8 v1, v1, 0x1

    .line 167
    if-ge v1, v2, :cond_4

    .line 168
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 169
    .local v3, "low":C
    if-lt v3, v7, :cond_1

    const v4, 0xdfff

    if-le v3, v4, :cond_2

    .line 170
    :cond_1
    const-string v4, "Illegal Surrogate Pair"

    goto :goto_0

    .line 174
    :cond_2
    const/high16 v4, 0x10000

    sub-int v5, v0, v6

    mul-int/lit16 v5, v5, 0x400

    add-int/2addr v4, v5

    sub-int v5, v3, v7

    add-int v0, v4, v5

    .line 181
    .end local v3    # "low":C
    :cond_3
    invoke-static {v0}, Lorg/jdom/Verifier;->isXMLCharacter(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 185
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " is not a legal XML character"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 177
    :cond_4
    const-string v4, "Surrogate Pair Truncated"

    goto :goto_0

    .line 159
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    .end local v0    # "ch":I
    :cond_6
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static checkCommentData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "reason":Ljava/lang/String;
    invoke-static {p0}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    .end local v0    # "reason":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 505
    .restart local v0    # "reason":Ljava/lang/String;
    :cond_0
    const-string v1, "--"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 506
    const-string v0, "Comments cannot contain double hyphens (--)"

    goto :goto_0

    .line 508
    :cond_1
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    const-string v0, "Comment data cannot end with a hyphen."

    goto :goto_0

    .line 513
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkElementName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p0}, Lorg/jdom/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 102
    .end local v0    # "reason":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 97
    .restart local v0    # "reason":Ljava/lang/String;
    :cond_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 98
    const-string v0, "Element names cannot contain colons"

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkNamespaceCollision(Lorg/jdom/Attribute;Lorg/jdom/Element;)Ljava/lang/String;
    .locals 3
    .param p0, "attribute"    # Lorg/jdom/Attribute;
    .param p1, "element"    # Lorg/jdom/Element;

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    .line 339
    .local v0, "namespace":Lorg/jdom/Namespace;
    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "prefix":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    const/4 v2, 0x0

    .line 344
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, p1}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Element;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static checkNamespaceCollision(Lorg/jdom/Namespace;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p0, "namespace"    # Lorg/jdom/Namespace;
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 408
    if-nez p1, :cond_1

    .line 409
    const/4 v2, 0x0

    .line 430
    :cond_0
    return-object v2

    .line 412
    :cond_1
    const/4 v2, 0x0

    .line 413
    .local v2, "reason":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 414
    .local v0, "i":Ljava/util/Iterator;
    :cond_2
    :goto_0
    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 416
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Lorg/jdom/Attribute;

    if-eqz v3, :cond_3

    .line 417
    check-cast v1, Lorg/jdom/Attribute;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-static {p0, v1}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Attribute;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 419
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v3, v1, Lorg/jdom/Element;

    if-eqz v3, :cond_4

    .line 420
    check-cast v1, Lorg/jdom/Element;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-static {p0, v1}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Element;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 422
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v3, v1, Lorg/jdom/Namespace;

    if-eqz v3, :cond_2

    .line 423
    check-cast v1, Lorg/jdom/Namespace;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-static {p0, v1}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v2

    .line 424
    if-eqz v2, :cond_2

    .line 425
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " with an additional namespace declared by the element"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Attribute;)Ljava/lang/String;
    .locals 3
    .param p0, "namespace"    # Lorg/jdom/Namespace;
    .param p1, "attribute"    # Lorg/jdom/Attribute;

    .prologue
    .line 389
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 392
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " with an attribute namespace prefix on the element"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    :cond_0
    return-object v0
.end method

.method public static checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Element;)Ljava/lang/String;
    .locals 3
    .param p0, "namespace"    # Lorg/jdom/Namespace;
    .param p1, "element"    # Lorg/jdom/Element;

    .prologue
    .line 358
    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 361
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " with the element namespace prefix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    :goto_0
    return-object v1

    .line 364
    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 367
    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {p1}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 372
    goto :goto_0

    .line 375
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 7
    .param p0, "namespace"    # Lorg/jdom/Namespace;
    .param p1, "other"    # Lorg/jdom/Namespace;

    .prologue
    .line 316
    const/4 v2, 0x0

    .line 317
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "p1":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "u1":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "p2":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "u2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 322
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "The namespace prefix \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\" collides"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    :cond_0
    return-object v2
.end method

.method public static checkNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 227
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-object v4

    .line 232
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 233
    .local v1, "first":C
    invoke-static {v1}, Lorg/jdom/Verifier;->isXMLDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 234
    const-string v4, "Namespace prefixes cannot begin with a number"

    goto :goto_0

    .line 237
    :cond_2
    const/16 v5, 0x24

    if-ne v1, v5, :cond_3

    .line 238
    const-string v4, "Namespace prefixes cannot begin with a dollar sign ($)"

    goto :goto_0

    .line 241
    :cond_3
    const/16 v5, 0x2d

    if-ne v1, v5, :cond_4

    .line 242
    const-string v4, "Namespace prefixes cannot begin with a hyphen (-)"

    goto :goto_0

    .line 245
    :cond_4
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_5

    .line 246
    const-string v4, "Namespace prefixes cannot begin with a period (.)"

    goto :goto_0

    .line 249
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 250
    const-string v4, "Namespace prefixes cannot begin with \"xml\" in any combination of case"

    goto :goto_0

    .line 255
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    :goto_1
    if-ge v2, v3, :cond_8

    .line 256
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 257
    .local v0, "c":C
    invoke-static {v0}, Lorg/jdom/Verifier;->isXMLNameCharacter(C)Z

    move-result v5

    if-nez v5, :cond_7

    .line 258
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Namespace prefixes cannot contain the character \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 255
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 264
    .end local v0    # "c":C
    :cond_8
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 265
    const-string v4, "Namespace prefixes cannot contain colons"

    goto :goto_0
.end method

.method public static checkNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 282
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-object v1

    .line 287
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 288
    .local v0, "first":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    const-string v1, "Namespace URIs cannot begin with a number"

    goto :goto_0

    .line 292
    :cond_2
    const/16 v2, 0x24

    if-ne v0, v2, :cond_3

    .line 293
    const-string v1, "Namespace URIs cannot begin with a dollar sign ($)"

    goto :goto_0

    .line 296
    :cond_3
    const/16 v2, 0x2d

    if-ne v0, v2, :cond_0

    .line 297
    const-string v1, "Namespace URIs cannot begin with a hyphen (-)"

    goto :goto_0
.end method

.method public static checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 479
    invoke-static {p0}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "reason":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 482
    const-string v1, "?>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 483
    const-string v0, "Processing instructions cannot contain the string \"?>\""

    .line 488
    .end local v0    # "reason":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static checkProcessingInstructionTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-static {p0}, Lorg/jdom/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 464
    .end local v0    # "reason":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 449
    .restart local v0    # "reason":Ljava/lang/String;
    :cond_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 450
    const-string v0, "Processing instruction targets cannot contain colons"

    goto :goto_0

    .line 454
    :cond_1
    const-string v1, "xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    const-string v0, "Processing instructions cannot have a target of \"xml\" in any combination of case. (Note that the \"<?xml ... ?>\" declaration at the beginning of a document is not a processing instruction and should not be added as one; it is written automatically during output, e.g. by XMLOutputter.)"

    goto :goto_0

    .line 464
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkPublicID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "publicID"    # Ljava/lang/String;

    .prologue
    .line 547
    const/4 v2, 0x0

    .line 549
    .local v2, "reason":Ljava/lang/String;
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 560
    :goto_0
    return-object v3

    .line 552
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 553
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 554
    .local v0, "c":C
    invoke-static {v0}, Lorg/jdom/Verifier;->isXMLPublicIDCharacter(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 555
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " is not a legal character in public IDs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v0    # "c":C
    :cond_1
    move-object v3, v2

    .line 560
    goto :goto_0

    .line 552
    .restart local v0    # "c":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static checkSystemLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "systemLiteral"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 573
    const/4 v0, 0x0

    .line 575
    .local v0, "reason":Ljava/lang/String;
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 587
    :goto_0
    return-object v1

    .line 578
    :cond_0
    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_1

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 580
    const-string v0, "System literals cannot simultaneously contain both single and double quotes."

    :goto_1
    move-object v1, v0

    .line 587
    goto :goto_0

    .line 584
    :cond_1
    invoke-static {p0}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static checkURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 636
    if-eqz p0, :cond_0

    const-string v7, ""

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-object v6

    .line 640
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 641
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 642
    .local v5, "test":C
    invoke-static {v5}, Lorg/jdom/Verifier;->isURICharacter(C)Z

    move-result v7

    if-nez v7, :cond_3

    .line 643
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, "msgNumber":Ljava/lang/String;
    const/16 v6, 0x9

    if-gt v5, v6, :cond_2

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "0x0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 645
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "URIs cannot contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 647
    .end local v3    # "msgNumber":Ljava/lang/String;
    :cond_3
    const/16 v7, 0x25

    if-ne v5, v7, :cond_5

    .line 649
    add-int/lit8 v7, v2, 0x1

    :try_start_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 650
    .local v1, "firstDigit":C
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 651
    .local v4, "secondDigit":C
    invoke-static {v1}, Lorg/jdom/Verifier;->isHexDigit(C)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v4}, Lorg/jdom/Verifier;->isHexDigit(C)Z

    move-result v7

    if-nez v7, :cond_5

    .line 653
    :cond_4
    const-string v6, "Percent signs in URIs must be followed by exactly two hexadecimal digits."
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 658
    .end local v1    # "firstDigit":C
    .end local v4    # "secondDigit":C
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v6, "Percent signs in URIs must be followed by exactly two hexadecimal digits."

    goto :goto_0

    .line 640
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static checkXMLName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 600
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 602
    :cond_0
    const-string v4, "XML names cannot be null or empty"

    .line 621
    :goto_0
    return-object v4

    .line 607
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 608
    .local v1, "first":C
    invoke-static {v1}, Lorg/jdom/Verifier;->isXMLNameStartCharacter(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 609
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "XML names cannot begin with the character \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 613
    :cond_2
    const/4 v2, 0x1

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 614
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 615
    .local v0, "c":C
    invoke-static {v0}, Lorg/jdom/Verifier;->isXMLNameCharacter(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 616
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "XML names cannot contain the character \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 613
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 621
    .end local v0    # "c":C
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isHexDigit(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 686
    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    .line 690
    :cond_0
    :goto_0
    return v0

    .line 687
    :cond_1
    const/16 v1, 0x41

    if-lt p0, v1, :cond_2

    const/16 v1, 0x46

    if-le p0, v1, :cond_0

    .line 688
    :cond_2
    const/16 v1, 0x61

    if-lt p0, v1, :cond_3

    const/16 v1, 0x66

    if-le p0, v1, :cond_0

    .line 690
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isURICharacter(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 704
    const/16 v1, 0x61

    if-lt p0, v1, :cond_1

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_1

    .line 727
    :cond_0
    :goto_0
    return v0

    .line 705
    :cond_1
    const/16 v1, 0x41

    if-lt p0, v1, :cond_2

    const/16 v1, 0x5a

    if-le p0, v1, :cond_0

    .line 706
    :cond_2
    const/16 v1, 0x30

    if-lt p0, v1, :cond_3

    const/16 v1, 0x39

    if-le p0, v1, :cond_0

    .line 707
    :cond_3
    const/16 v1, 0x2f

    if-eq p0, v1, :cond_0

    .line 708
    const/16 v1, 0x2d

    if-eq p0, v1, :cond_0

    .line 709
    const/16 v1, 0x2e

    if-eq p0, v1, :cond_0

    .line 710
    const/16 v1, 0x3f

    if-eq p0, v1, :cond_0

    .line 711
    const/16 v1, 0x3a

    if-eq p0, v1, :cond_0

    .line 712
    const/16 v1, 0x40

    if-eq p0, v1, :cond_0

    .line 713
    const/16 v1, 0x26

    if-eq p0, v1, :cond_0

    .line 714
    const/16 v1, 0x3d

    if-eq p0, v1, :cond_0

    .line 715
    const/16 v1, 0x2b

    if-eq p0, v1, :cond_0

    .line 716
    const/16 v1, 0x24

    if-eq p0, v1, :cond_0

    .line 717
    const/16 v1, 0x2c

    if-eq p0, v1, :cond_0

    .line 718
    const/16 v1, 0x25

    if-eq p0, v1, :cond_0

    .line 720
    const/16 v1, 0x5f

    if-eq p0, v1, :cond_0

    .line 721
    const/16 v1, 0x21

    if-eq p0, v1, :cond_0

    .line 722
    const/16 v1, 0x7e

    if-eq p0, v1, :cond_0

    .line 723
    const/16 v1, 0x2a

    if-eq p0, v1, :cond_0

    .line 724
    const/16 v1, 0x27

    if-eq p0, v1, :cond_0

    .line 725
    const/16 v1, 0x28

    if-eq p0, v1, :cond_0

    .line 726
    const/16 v1, 0x29

    if-eq p0, v1, :cond_0

    .line 727
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXMLCharacter(I)Z
    .locals 3
    .param p0, "c"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 741
    const/16 v2, 0xa

    if-ne p0, v2, :cond_1

    .line 749
    :cond_0
    :goto_0
    return v0

    .line 742
    :cond_1
    const/16 v2, 0xd

    if-eq p0, v2, :cond_0

    .line 743
    const/16 v2, 0x9

    if-eq p0, v2, :cond_0

    .line 745
    const/16 v2, 0x20

    if-ge p0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const v2, 0xd7ff

    if-le p0, v2, :cond_0

    .line 746
    const v2, 0xe000

    if-ge p0, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const v2, 0xfffd

    if-le p0, v2, :cond_0

    .line 747
    const/high16 v2, 0x10000

    if-ge p0, v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const v2, 0x10ffff

    if-le p0, v2, :cond_0

    move v0, v1

    .line 749
    goto :goto_0
.end method

.method public static isXMLCombiningChar(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1035
    const/16 v2, 0x300

    if-ge p0, v2, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return v0

    .line 1035
    :cond_1
    const/16 v2, 0x345

    if-gt p0, v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1036
    :cond_2
    const/16 v2, 0x360

    if-lt p0, v2, :cond_0

    const/16 v2, 0x361

    if-gt p0, v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 1037
    :cond_3
    const/16 v2, 0x483

    if-lt p0, v2, :cond_0

    const/16 v2, 0x486

    if-gt p0, v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 1038
    :cond_4
    const/16 v2, 0x591

    if-lt p0, v2, :cond_0

    const/16 v2, 0x5a1

    if-gt p0, v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 1040
    :cond_5
    const/16 v2, 0x5a3

    if-lt p0, v2, :cond_0

    const/16 v2, 0x5b9

    if-gt p0, v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 1041
    :cond_6
    const/16 v2, 0x5bb

    if-lt p0, v2, :cond_0

    const/16 v2, 0x5bd

    if-gt p0, v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 1042
    :cond_7
    const/16 v2, 0x5bf

    if-ne p0, v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 1043
    :cond_8
    const/16 v2, 0x5c1

    if-lt p0, v2, :cond_0

    const/16 v2, 0x5c2

    if-gt p0, v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 1045
    :cond_9
    const/16 v2, 0x5c4

    if-ne p0, v2, :cond_a

    move v0, v1

    goto :goto_0

    .line 1046
    :cond_a
    const/16 v2, 0x64b

    if-lt p0, v2, :cond_0

    const/16 v2, 0x652

    if-gt p0, v2, :cond_b

    move v0, v1

    goto :goto_0

    .line 1047
    :cond_b
    const/16 v2, 0x670

    if-ne p0, v2, :cond_c

    move v0, v1

    goto :goto_0

    .line 1048
    :cond_c
    const/16 v2, 0x6d6

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6dc

    if-gt p0, v2, :cond_d

    move v0, v1

    goto :goto_0

    .line 1050
    :cond_d
    const/16 v2, 0x6dd

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6df

    if-gt p0, v2, :cond_e

    move v0, v1

    goto :goto_0

    .line 1051
    :cond_e
    const/16 v2, 0x6e0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6e4

    if-gt p0, v2, :cond_f

    move v0, v1

    goto :goto_0

    .line 1052
    :cond_f
    const/16 v2, 0x6e7

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6e8

    if-gt p0, v2, :cond_10

    move v0, v1

    goto/16 :goto_0

    .line 1054
    :cond_10
    const/16 v2, 0x6ea

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6ed

    if-gt p0, v2, :cond_11

    move v0, v1

    goto/16 :goto_0

    .line 1055
    :cond_11
    const/16 v2, 0x901

    if-lt p0, v2, :cond_0

    const/16 v2, 0x903

    if-gt p0, v2, :cond_12

    move v0, v1

    goto/16 :goto_0

    .line 1056
    :cond_12
    const/16 v2, 0x93c

    if-ne p0, v2, :cond_13

    move v0, v1

    goto/16 :goto_0

    .line 1057
    :cond_13
    const/16 v2, 0x93e

    if-lt p0, v2, :cond_0

    const/16 v2, 0x94c

    if-gt p0, v2, :cond_14

    move v0, v1

    goto/16 :goto_0

    .line 1059
    :cond_14
    const/16 v2, 0x94d

    if-ne p0, v2, :cond_15

    move v0, v1

    goto/16 :goto_0

    .line 1060
    :cond_15
    const/16 v2, 0x951

    if-lt p0, v2, :cond_0

    const/16 v2, 0x954

    if-gt p0, v2, :cond_16

    move v0, v1

    goto/16 :goto_0

    .line 1061
    :cond_16
    const/16 v2, 0x962

    if-lt p0, v2, :cond_0

    const/16 v2, 0x963

    if-gt p0, v2, :cond_17

    move v0, v1

    goto/16 :goto_0

    .line 1062
    :cond_17
    const/16 v2, 0x981

    if-lt p0, v2, :cond_0

    const/16 v2, 0x983

    if-gt p0, v2, :cond_18

    move v0, v1

    goto/16 :goto_0

    .line 1064
    :cond_18
    const/16 v2, 0x9bc

    if-ne p0, v2, :cond_19

    move v0, v1

    goto/16 :goto_0

    .line 1065
    :cond_19
    const/16 v2, 0x9be

    if-ne p0, v2, :cond_1a

    move v0, v1

    goto/16 :goto_0

    .line 1066
    :cond_1a
    const/16 v2, 0x9bf

    if-ne p0, v2, :cond_1b

    move v0, v1

    goto/16 :goto_0

    .line 1067
    :cond_1b
    const/16 v2, 0x9c0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9c4

    if-gt p0, v2, :cond_1c

    move v0, v1

    goto/16 :goto_0

    .line 1068
    :cond_1c
    const/16 v2, 0x9c7

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9c8

    if-gt p0, v2, :cond_1d

    move v0, v1

    goto/16 :goto_0

    .line 1070
    :cond_1d
    const/16 v2, 0x9cb

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9cd

    if-gt p0, v2, :cond_1e

    move v0, v1

    goto/16 :goto_0

    .line 1071
    :cond_1e
    const/16 v2, 0x9d7

    if-ne p0, v2, :cond_1f

    move v0, v1

    goto/16 :goto_0

    .line 1072
    :cond_1f
    const/16 v2, 0x9e2

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9e3

    if-gt p0, v2, :cond_20

    move v0, v1

    goto/16 :goto_0

    .line 1073
    :cond_20
    const/16 v2, 0xa02

    if-ne p0, v2, :cond_21

    move v0, v1

    goto/16 :goto_0

    .line 1074
    :cond_21
    const/16 v2, 0xa3c

    if-ne p0, v2, :cond_22

    move v0, v1

    goto/16 :goto_0

    .line 1076
    :cond_22
    const/16 v2, 0xa3e

    if-ne p0, v2, :cond_23

    move v0, v1

    goto/16 :goto_0

    .line 1077
    :cond_23
    const/16 v2, 0xa3f

    if-ne p0, v2, :cond_24

    move v0, v1

    goto/16 :goto_0

    .line 1078
    :cond_24
    const/16 v2, 0xa40

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa42

    if-gt p0, v2, :cond_25

    move v0, v1

    goto/16 :goto_0

    .line 1079
    :cond_25
    const/16 v2, 0xa47

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa48

    if-gt p0, v2, :cond_26

    move v0, v1

    goto/16 :goto_0

    .line 1081
    :cond_26
    const/16 v2, 0xa4b

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa4d

    if-gt p0, v2, :cond_27

    move v0, v1

    goto/16 :goto_0

    .line 1082
    :cond_27
    const/16 v2, 0xa70

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa71

    if-gt p0, v2, :cond_28

    move v0, v1

    goto/16 :goto_0

    .line 1083
    :cond_28
    const/16 v2, 0xa81

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa83

    if-gt p0, v2, :cond_29

    move v0, v1

    goto/16 :goto_0

    .line 1084
    :cond_29
    const/16 v2, 0xabc

    if-ne p0, v2, :cond_2a

    move v0, v1

    goto/16 :goto_0

    .line 1086
    :cond_2a
    const/16 v2, 0xabe

    if-lt p0, v2, :cond_0

    const/16 v2, 0xac5

    if-gt p0, v2, :cond_2b

    move v0, v1

    goto/16 :goto_0

    .line 1087
    :cond_2b
    const/16 v2, 0xac7

    if-lt p0, v2, :cond_0

    const/16 v2, 0xac9

    if-gt p0, v2, :cond_2c

    move v0, v1

    goto/16 :goto_0

    .line 1088
    :cond_2c
    const/16 v2, 0xacb

    if-lt p0, v2, :cond_0

    const/16 v2, 0xacd

    if-gt p0, v2, :cond_2d

    move v0, v1

    goto/16 :goto_0

    .line 1090
    :cond_2d
    const/16 v2, 0xb01

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb03

    if-gt p0, v2, :cond_2e

    move v0, v1

    goto/16 :goto_0

    .line 1091
    :cond_2e
    const/16 v2, 0xb3c

    if-ne p0, v2, :cond_2f

    move v0, v1

    goto/16 :goto_0

    .line 1092
    :cond_2f
    const/16 v2, 0xb3e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb43

    if-gt p0, v2, :cond_30

    move v0, v1

    goto/16 :goto_0

    .line 1093
    :cond_30
    const/16 v2, 0xb47

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb48

    if-gt p0, v2, :cond_31

    move v0, v1

    goto/16 :goto_0

    .line 1095
    :cond_31
    const/16 v2, 0xb4b

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb4d

    if-gt p0, v2, :cond_32

    move v0, v1

    goto/16 :goto_0

    .line 1096
    :cond_32
    const/16 v2, 0xb56

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb57

    if-gt p0, v2, :cond_33

    move v0, v1

    goto/16 :goto_0

    .line 1097
    :cond_33
    const/16 v2, 0xb82

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb83

    if-gt p0, v2, :cond_34

    move v0, v1

    goto/16 :goto_0

    .line 1099
    :cond_34
    const/16 v2, 0xbbe

    if-lt p0, v2, :cond_0

    const/16 v2, 0xbc2

    if-gt p0, v2, :cond_35

    move v0, v1

    goto/16 :goto_0

    .line 1100
    :cond_35
    const/16 v2, 0xbc6

    if-lt p0, v2, :cond_0

    const/16 v2, 0xbc8

    if-gt p0, v2, :cond_36

    move v0, v1

    goto/16 :goto_0

    .line 1101
    :cond_36
    const/16 v2, 0xbca

    if-lt p0, v2, :cond_0

    const/16 v2, 0xbcd

    if-gt p0, v2, :cond_37

    move v0, v1

    goto/16 :goto_0

    .line 1102
    :cond_37
    const/16 v2, 0xbd7

    if-ne p0, v2, :cond_38

    move v0, v1

    goto/16 :goto_0

    .line 1104
    :cond_38
    const/16 v2, 0xc01

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc03

    if-gt p0, v2, :cond_39

    move v0, v1

    goto/16 :goto_0

    .line 1105
    :cond_39
    const/16 v2, 0xc3e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc44

    if-gt p0, v2, :cond_3a

    move v0, v1

    goto/16 :goto_0

    .line 1106
    :cond_3a
    const/16 v2, 0xc46

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc48

    if-gt p0, v2, :cond_3b

    move v0, v1

    goto/16 :goto_0

    .line 1108
    :cond_3b
    const/16 v2, 0xc4a

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc4d

    if-gt p0, v2, :cond_3c

    move v0, v1

    goto/16 :goto_0

    .line 1109
    :cond_3c
    const/16 v2, 0xc55

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc56

    if-gt p0, v2, :cond_3d

    move v0, v1

    goto/16 :goto_0

    .line 1110
    :cond_3d
    const/16 v2, 0xc82

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc83

    if-gt p0, v2, :cond_3e

    move v0, v1

    goto/16 :goto_0

    .line 1112
    :cond_3e
    const/16 v2, 0xcbe

    if-lt p0, v2, :cond_0

    const/16 v2, 0xcc4

    if-gt p0, v2, :cond_3f

    move v0, v1

    goto/16 :goto_0

    .line 1113
    :cond_3f
    const/16 v2, 0xcc6

    if-lt p0, v2, :cond_0

    const/16 v2, 0xcc8

    if-gt p0, v2, :cond_40

    move v0, v1

    goto/16 :goto_0

    .line 1114
    :cond_40
    const/16 v2, 0xcca

    if-lt p0, v2, :cond_0

    const/16 v2, 0xccd

    if-gt p0, v2, :cond_41

    move v0, v1

    goto/16 :goto_0

    .line 1116
    :cond_41
    const/16 v2, 0xcd5

    if-lt p0, v2, :cond_0

    const/16 v2, 0xcd6

    if-gt p0, v2, :cond_42

    move v0, v1

    goto/16 :goto_0

    .line 1117
    :cond_42
    const/16 v2, 0xd02

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd03

    if-gt p0, v2, :cond_43

    move v0, v1

    goto/16 :goto_0

    .line 1118
    :cond_43
    const/16 v2, 0xd3e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd43

    if-gt p0, v2, :cond_44

    move v0, v1

    goto/16 :goto_0

    .line 1120
    :cond_44
    const/16 v2, 0xd46

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd48

    if-gt p0, v2, :cond_45

    move v0, v1

    goto/16 :goto_0

    .line 1121
    :cond_45
    const/16 v2, 0xd4a

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd4d

    if-gt p0, v2, :cond_46

    move v0, v1

    goto/16 :goto_0

    .line 1122
    :cond_46
    const/16 v2, 0xd57

    if-ne p0, v2, :cond_47

    move v0, v1

    goto/16 :goto_0

    .line 1123
    :cond_47
    const/16 v2, 0xe31

    if-ne p0, v2, :cond_48

    move v0, v1

    goto/16 :goto_0

    .line 1125
    :cond_48
    const/16 v2, 0xe34

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe3a

    if-gt p0, v2, :cond_49

    move v0, v1

    goto/16 :goto_0

    .line 1126
    :cond_49
    const/16 v2, 0xe47

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe4e

    if-gt p0, v2, :cond_4a

    move v0, v1

    goto/16 :goto_0

    .line 1127
    :cond_4a
    const/16 v2, 0xeb1

    if-ne p0, v2, :cond_4b

    move v0, v1

    goto/16 :goto_0

    .line 1128
    :cond_4b
    const/16 v2, 0xeb4

    if-lt p0, v2, :cond_0

    const/16 v2, 0xeb9

    if-gt p0, v2, :cond_4c

    move v0, v1

    goto/16 :goto_0

    .line 1130
    :cond_4c
    const/16 v2, 0xebb

    if-lt p0, v2, :cond_0

    const/16 v2, 0xebc

    if-gt p0, v2, :cond_4d

    move v0, v1

    goto/16 :goto_0

    .line 1131
    :cond_4d
    const/16 v2, 0xec8

    if-lt p0, v2, :cond_0

    const/16 v2, 0xecd

    if-gt p0, v2, :cond_4e

    move v0, v1

    goto/16 :goto_0

    .line 1132
    :cond_4e
    const/16 v2, 0xf18

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf19

    if-gt p0, v2, :cond_4f

    move v0, v1

    goto/16 :goto_0

    .line 1133
    :cond_4f
    const/16 v2, 0xf35

    if-ne p0, v2, :cond_50

    move v0, v1

    goto/16 :goto_0

    .line 1135
    :cond_50
    const/16 v2, 0xf37

    if-ne p0, v2, :cond_51

    move v0, v1

    goto/16 :goto_0

    .line 1136
    :cond_51
    const/16 v2, 0xf39

    if-ne p0, v2, :cond_52

    move v0, v1

    goto/16 :goto_0

    .line 1137
    :cond_52
    const/16 v2, 0xf3e

    if-ne p0, v2, :cond_53

    move v0, v1

    goto/16 :goto_0

    .line 1138
    :cond_53
    const/16 v2, 0xf3f

    if-ne p0, v2, :cond_54

    move v0, v1

    goto/16 :goto_0

    .line 1139
    :cond_54
    const/16 v2, 0xf71

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf84

    if-gt p0, v2, :cond_55

    move v0, v1

    goto/16 :goto_0

    .line 1141
    :cond_55
    const/16 v2, 0xf86

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf8b

    if-gt p0, v2, :cond_56

    move v0, v1

    goto/16 :goto_0

    .line 1142
    :cond_56
    const/16 v2, 0xf90

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf95

    if-gt p0, v2, :cond_57

    move v0, v1

    goto/16 :goto_0

    .line 1143
    :cond_57
    const/16 v2, 0xf97

    if-ne p0, v2, :cond_58

    move v0, v1

    goto/16 :goto_0

    .line 1144
    :cond_58
    const/16 v2, 0xf99

    if-lt p0, v2, :cond_0

    const/16 v2, 0xfad

    if-gt p0, v2, :cond_59

    move v0, v1

    goto/16 :goto_0

    .line 1146
    :cond_59
    const/16 v2, 0xfb1

    if-lt p0, v2, :cond_0

    const/16 v2, 0xfb7

    if-gt p0, v2, :cond_5a

    move v0, v1

    goto/16 :goto_0

    .line 1147
    :cond_5a
    const/16 v2, 0xfb9

    if-ne p0, v2, :cond_5b

    move v0, v1

    goto/16 :goto_0

    .line 1148
    :cond_5b
    const/16 v2, 0x20d0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x20dc

    if-gt p0, v2, :cond_5c

    move v0, v1

    goto/16 :goto_0

    .line 1149
    :cond_5c
    const/16 v2, 0x20e1

    if-ne p0, v2, :cond_5d

    move v0, v1

    goto/16 :goto_0

    .line 1151
    :cond_5d
    const/16 v2, 0x302a

    if-lt p0, v2, :cond_0

    const/16 v2, 0x302f

    if-gt p0, v2, :cond_5e

    move v0, v1

    goto/16 :goto_0

    .line 1152
    :cond_5e
    const/16 v2, 0x3099

    if-ne p0, v2, :cond_5f

    move v0, v1

    goto/16 :goto_0

    .line 1153
    :cond_5f
    const/16 v2, 0x309a

    if-ne p0, v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public static isXMLDigit(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1199
    const/16 v2, 0x30

    if-ge p0, v2, :cond_1

    .line 1219
    :cond_0
    :goto_0
    return v0

    .line 1199
    :cond_1
    const/16 v2, 0x39

    if-gt p0, v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1200
    :cond_2
    const/16 v2, 0x660

    if-lt p0, v2, :cond_0

    const/16 v2, 0x669

    if-gt p0, v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 1201
    :cond_3
    const/16 v2, 0x6f0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6f9

    if-gt p0, v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 1202
    :cond_4
    const/16 v2, 0x966

    if-lt p0, v2, :cond_0

    const/16 v2, 0x96f

    if-gt p0, v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 1204
    :cond_5
    const/16 v2, 0x9e6

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9ef

    if-gt p0, v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 1205
    :cond_6
    const/16 v2, 0xa66

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa6f

    if-gt p0, v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 1206
    :cond_7
    const/16 v2, 0xae6

    if-lt p0, v2, :cond_0

    const/16 v2, 0xaef

    if-gt p0, v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 1208
    :cond_8
    const/16 v2, 0xb66

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb6f

    if-gt p0, v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 1209
    :cond_9
    const/16 v2, 0xbe7

    if-lt p0, v2, :cond_0

    const/16 v2, 0xbef

    if-gt p0, v2, :cond_a

    move v0, v1

    goto :goto_0

    .line 1210
    :cond_a
    const/16 v2, 0xc66

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc6f

    if-gt p0, v2, :cond_b

    move v0, v1

    goto :goto_0

    .line 1212
    :cond_b
    const/16 v2, 0xce6

    if-lt p0, v2, :cond_0

    const/16 v2, 0xcef

    if-gt p0, v2, :cond_c

    move v0, v1

    goto :goto_0

    .line 1213
    :cond_c
    const/16 v2, 0xd66

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd6f

    if-gt p0, v2, :cond_d

    move v0, v1

    goto :goto_0

    .line 1214
    :cond_d
    const/16 v2, 0xe50

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe59

    if-gt p0, v2, :cond_e

    move v0, v1

    goto :goto_0

    .line 1216
    :cond_e
    const/16 v2, 0xed0

    if-lt p0, v2, :cond_0

    const/16 v2, 0xed9

    if-gt p0, v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    .line 1217
    :cond_f
    const/16 v2, 0xf20

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf29

    if-gt p0, v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public static isXMLExtender(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1169
    const/16 v2, 0xb6

    if-ge p0, v2, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return v0

    .line 1172
    :cond_1
    const/16 v2, 0xb7

    if-ne p0, v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1173
    :cond_2
    const/16 v2, 0x2d0

    if-ne p0, v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 1174
    :cond_3
    const/16 v2, 0x2d1

    if-ne p0, v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 1175
    :cond_4
    const/16 v2, 0x387

    if-ne p0, v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 1176
    :cond_5
    const/16 v2, 0x640

    if-ne p0, v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 1177
    :cond_6
    const/16 v2, 0xe46

    if-ne p0, v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 1178
    :cond_7
    const/16 v2, 0xec6

    if-ne p0, v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 1179
    :cond_8
    const/16 v2, 0x3005

    if-ne p0, v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 1181
    :cond_9
    const/16 v2, 0x3031

    if-lt p0, v2, :cond_0

    const/16 v2, 0x3035

    if-gt p0, v2, :cond_a

    move v0, v1

    goto :goto_0

    .line 1182
    :cond_a
    const/16 v2, 0x309d

    if-lt p0, v2, :cond_0

    const/16 v2, 0x309e

    if-gt p0, v2, :cond_b

    move v0, v1

    goto :goto_0

    .line 1183
    :cond_b
    const/16 v2, 0x30fc

    if-lt p0, v2, :cond_0

    const/16 v2, 0x30fe

    if-gt p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isXMLLetter(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 814
    const/16 v2, 0x41

    if-ge p0, v2, :cond_1

    .line 1020
    :cond_0
    :goto_0
    return v0

    .line 814
    :cond_1
    const/16 v2, 0x5a

    if-gt p0, v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 815
    :cond_2
    const/16 v2, 0x61

    if-lt p0, v2, :cond_0

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 816
    :cond_3
    const/16 v2, 0xc0

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd6

    if-gt p0, v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 817
    :cond_4
    const/16 v2, 0xd8

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf6

    if-gt p0, v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 818
    :cond_5
    const/16 v2, 0xf8

    if-lt p0, v2, :cond_0

    const/16 v2, 0xff

    if-gt p0, v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 819
    :cond_6
    const/16 v2, 0x100

    if-lt p0, v2, :cond_0

    const/16 v2, 0x131

    if-gt p0, v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 820
    :cond_7
    const/16 v2, 0x134

    if-lt p0, v2, :cond_0

    const/16 v2, 0x13e

    if-gt p0, v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 821
    :cond_8
    const/16 v2, 0x141

    if-lt p0, v2, :cond_0

    const/16 v2, 0x148

    if-gt p0, v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 822
    :cond_9
    const/16 v2, 0x14a

    if-lt p0, v2, :cond_0

    const/16 v2, 0x17e

    if-gt p0, v2, :cond_a

    move v0, v1

    goto :goto_0

    .line 823
    :cond_a
    const/16 v2, 0x180

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1c3

    if-gt p0, v2, :cond_b

    move v0, v1

    goto :goto_0

    .line 824
    :cond_b
    const/16 v2, 0x1cd

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f0

    if-gt p0, v2, :cond_c

    move v0, v1

    goto :goto_0

    .line 825
    :cond_c
    const/16 v2, 0x1f4

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f5

    if-gt p0, v2, :cond_d

    move v0, v1

    goto :goto_0

    .line 826
    :cond_d
    const/16 v2, 0x1fa

    if-lt p0, v2, :cond_0

    const/16 v2, 0x217

    if-gt p0, v2, :cond_e

    move v0, v1

    goto :goto_0

    .line 827
    :cond_e
    const/16 v2, 0x250

    if-lt p0, v2, :cond_0

    const/16 v2, 0x2a8

    if-gt p0, v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    .line 828
    :cond_f
    const/16 v2, 0x2bb

    if-lt p0, v2, :cond_0

    const/16 v2, 0x2c1

    if-gt p0, v2, :cond_10

    move v0, v1

    goto/16 :goto_0

    .line 829
    :cond_10
    const/16 v2, 0x386

    if-ne p0, v2, :cond_11

    move v0, v1

    goto/16 :goto_0

    .line 830
    :cond_11
    const/16 v2, 0x388

    if-lt p0, v2, :cond_0

    const/16 v2, 0x38a

    if-gt p0, v2, :cond_12

    move v0, v1

    goto/16 :goto_0

    .line 831
    :cond_12
    const/16 v2, 0x38c

    if-ne p0, v2, :cond_13

    move v0, v1

    goto/16 :goto_0

    .line 832
    :cond_13
    const/16 v2, 0x38e

    if-lt p0, v2, :cond_0

    const/16 v2, 0x3a1

    if-gt p0, v2, :cond_14

    move v0, v1

    goto/16 :goto_0

    .line 833
    :cond_14
    const/16 v2, 0x3a3

    if-lt p0, v2, :cond_0

    const/16 v2, 0x3ce

    if-gt p0, v2, :cond_15

    move v0, v1

    goto/16 :goto_0

    .line 834
    :cond_15
    const/16 v2, 0x3d0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x3d6

    if-gt p0, v2, :cond_16

    move v0, v1

    goto/16 :goto_0

    .line 835
    :cond_16
    const/16 v2, 0x3da

    if-ne p0, v2, :cond_17

    move v0, v1

    goto/16 :goto_0

    .line 836
    :cond_17
    const/16 v2, 0x3dc

    if-ne p0, v2, :cond_18

    move v0, v1

    goto/16 :goto_0

    .line 837
    :cond_18
    const/16 v2, 0x3de

    if-ne p0, v2, :cond_19

    move v0, v1

    goto/16 :goto_0

    .line 838
    :cond_19
    const/16 v2, 0x3e0

    if-ne p0, v2, :cond_1a

    move v0, v1

    goto/16 :goto_0

    .line 839
    :cond_1a
    const/16 v2, 0x3e2

    if-lt p0, v2, :cond_0

    const/16 v2, 0x3f3

    if-gt p0, v2, :cond_1b

    move v0, v1

    goto/16 :goto_0

    .line 840
    :cond_1b
    const/16 v2, 0x401

    if-lt p0, v2, :cond_0

    const/16 v2, 0x40c

    if-gt p0, v2, :cond_1c

    move v0, v1

    goto/16 :goto_0

    .line 841
    :cond_1c
    const/16 v2, 0x40e

    if-lt p0, v2, :cond_0

    const/16 v2, 0x44f

    if-gt p0, v2, :cond_1d

    move v0, v1

    goto/16 :goto_0

    .line 842
    :cond_1d
    const/16 v2, 0x451

    if-lt p0, v2, :cond_0

    const/16 v2, 0x45c

    if-gt p0, v2, :cond_1e

    move v0, v1

    goto/16 :goto_0

    .line 843
    :cond_1e
    const/16 v2, 0x45e

    if-lt p0, v2, :cond_0

    const/16 v2, 0x481

    if-gt p0, v2, :cond_1f

    move v0, v1

    goto/16 :goto_0

    .line 844
    :cond_1f
    const/16 v2, 0x490

    if-lt p0, v2, :cond_0

    const/16 v2, 0x4c4

    if-gt p0, v2, :cond_20

    move v0, v1

    goto/16 :goto_0

    .line 845
    :cond_20
    const/16 v2, 0x4c7

    if-lt p0, v2, :cond_0

    const/16 v2, 0x4c8

    if-gt p0, v2, :cond_21

    move v0, v1

    goto/16 :goto_0

    .line 846
    :cond_21
    const/16 v2, 0x4cb

    if-lt p0, v2, :cond_0

    const/16 v2, 0x4cc

    if-gt p0, v2, :cond_22

    move v0, v1

    goto/16 :goto_0

    .line 847
    :cond_22
    const/16 v2, 0x4d0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x4eb

    if-gt p0, v2, :cond_23

    move v0, v1

    goto/16 :goto_0

    .line 848
    :cond_23
    const/16 v2, 0x4ee

    if-lt p0, v2, :cond_0

    const/16 v2, 0x4f5

    if-gt p0, v2, :cond_24

    move v0, v1

    goto/16 :goto_0

    .line 849
    :cond_24
    const/16 v2, 0x4f8

    if-lt p0, v2, :cond_0

    const/16 v2, 0x4f9

    if-gt p0, v2, :cond_25

    move v0, v1

    goto/16 :goto_0

    .line 850
    :cond_25
    const/16 v2, 0x531

    if-lt p0, v2, :cond_0

    const/16 v2, 0x556

    if-gt p0, v2, :cond_26

    move v0, v1

    goto/16 :goto_0

    .line 851
    :cond_26
    const/16 v2, 0x559

    if-ne p0, v2, :cond_27

    move v0, v1

    goto/16 :goto_0

    .line 852
    :cond_27
    const/16 v2, 0x561

    if-lt p0, v2, :cond_0

    const/16 v2, 0x586

    if-gt p0, v2, :cond_28

    move v0, v1

    goto/16 :goto_0

    .line 853
    :cond_28
    const/16 v2, 0x5d0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x5ea

    if-gt p0, v2, :cond_29

    move v0, v1

    goto/16 :goto_0

    .line 854
    :cond_29
    const/16 v2, 0x5f0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x5f2

    if-gt p0, v2, :cond_2a

    move v0, v1

    goto/16 :goto_0

    .line 855
    :cond_2a
    const/16 v2, 0x621

    if-lt p0, v2, :cond_0

    const/16 v2, 0x63a

    if-gt p0, v2, :cond_2b

    move v0, v1

    goto/16 :goto_0

    .line 856
    :cond_2b
    const/16 v2, 0x641

    if-lt p0, v2, :cond_0

    const/16 v2, 0x64a

    if-gt p0, v2, :cond_2c

    move v0, v1

    goto/16 :goto_0

    .line 857
    :cond_2c
    const/16 v2, 0x671

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6b7

    if-gt p0, v2, :cond_2d

    move v0, v1

    goto/16 :goto_0

    .line 858
    :cond_2d
    const/16 v2, 0x6ba

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6be

    if-gt p0, v2, :cond_2e

    move v0, v1

    goto/16 :goto_0

    .line 859
    :cond_2e
    const/16 v2, 0x6c0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6ce

    if-gt p0, v2, :cond_2f

    move v0, v1

    goto/16 :goto_0

    .line 860
    :cond_2f
    const/16 v2, 0x6d0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6d3

    if-gt p0, v2, :cond_30

    move v0, v1

    goto/16 :goto_0

    .line 861
    :cond_30
    const/16 v2, 0x6d5

    if-ne p0, v2, :cond_31

    move v0, v1

    goto/16 :goto_0

    .line 862
    :cond_31
    const/16 v2, 0x6e5

    if-lt p0, v2, :cond_0

    const/16 v2, 0x6e6

    if-gt p0, v2, :cond_32

    move v0, v1

    goto/16 :goto_0

    .line 863
    :cond_32
    const/16 v2, 0x905

    if-lt p0, v2, :cond_0

    const/16 v2, 0x939

    if-gt p0, v2, :cond_33

    move v0, v1

    goto/16 :goto_0

    .line 864
    :cond_33
    const/16 v2, 0x93d

    if-ne p0, v2, :cond_34

    move v0, v1

    goto/16 :goto_0

    .line 865
    :cond_34
    const/16 v2, 0x958

    if-lt p0, v2, :cond_0

    const/16 v2, 0x961

    if-gt p0, v2, :cond_35

    move v0, v1

    goto/16 :goto_0

    .line 866
    :cond_35
    const/16 v2, 0x985

    if-lt p0, v2, :cond_0

    const/16 v2, 0x98c

    if-gt p0, v2, :cond_36

    move v0, v1

    goto/16 :goto_0

    .line 867
    :cond_36
    const/16 v2, 0x98f

    if-lt p0, v2, :cond_0

    const/16 v2, 0x990

    if-gt p0, v2, :cond_37

    move v0, v1

    goto/16 :goto_0

    .line 868
    :cond_37
    const/16 v2, 0x993

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9a8

    if-gt p0, v2, :cond_38

    move v0, v1

    goto/16 :goto_0

    .line 869
    :cond_38
    const/16 v2, 0x9aa

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9b0

    if-gt p0, v2, :cond_39

    move v0, v1

    goto/16 :goto_0

    .line 870
    :cond_39
    const/16 v2, 0x9b2

    if-ne p0, v2, :cond_3a

    move v0, v1

    goto/16 :goto_0

    .line 871
    :cond_3a
    const/16 v2, 0x9b6

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9b9

    if-gt p0, v2, :cond_3b

    move v0, v1

    goto/16 :goto_0

    .line 872
    :cond_3b
    const/16 v2, 0x9dc

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9dd

    if-gt p0, v2, :cond_3c

    move v0, v1

    goto/16 :goto_0

    .line 873
    :cond_3c
    const/16 v2, 0x9df

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9e1

    if-gt p0, v2, :cond_3d

    move v0, v1

    goto/16 :goto_0

    .line 874
    :cond_3d
    const/16 v2, 0x9f0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x9f1

    if-gt p0, v2, :cond_3e

    move v0, v1

    goto/16 :goto_0

    .line 875
    :cond_3e
    const/16 v2, 0xa05

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa0a

    if-gt p0, v2, :cond_3f

    move v0, v1

    goto/16 :goto_0

    .line 876
    :cond_3f
    const/16 v2, 0xa0f

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa10

    if-gt p0, v2, :cond_40

    move v0, v1

    goto/16 :goto_0

    .line 877
    :cond_40
    const/16 v2, 0xa13

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa28

    if-gt p0, v2, :cond_41

    move v0, v1

    goto/16 :goto_0

    .line 878
    :cond_41
    const/16 v2, 0xa2a

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa30

    if-gt p0, v2, :cond_42

    move v0, v1

    goto/16 :goto_0

    .line 879
    :cond_42
    const/16 v2, 0xa32

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa33

    if-gt p0, v2, :cond_43

    move v0, v1

    goto/16 :goto_0

    .line 880
    :cond_43
    const/16 v2, 0xa35

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa36

    if-gt p0, v2, :cond_44

    move v0, v1

    goto/16 :goto_0

    .line 881
    :cond_44
    const/16 v2, 0xa38

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa39

    if-gt p0, v2, :cond_45

    move v0, v1

    goto/16 :goto_0

    .line 882
    :cond_45
    const/16 v2, 0xa59

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa5c

    if-gt p0, v2, :cond_46

    move v0, v1

    goto/16 :goto_0

    .line 883
    :cond_46
    const/16 v2, 0xa5e

    if-ne p0, v2, :cond_47

    move v0, v1

    goto/16 :goto_0

    .line 884
    :cond_47
    const/16 v2, 0xa72

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa74

    if-gt p0, v2, :cond_48

    move v0, v1

    goto/16 :goto_0

    .line 885
    :cond_48
    const/16 v2, 0xa85

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa8b

    if-gt p0, v2, :cond_49

    move v0, v1

    goto/16 :goto_0

    .line 886
    :cond_49
    const/16 v2, 0xa8d

    if-ne p0, v2, :cond_4a

    move v0, v1

    goto/16 :goto_0

    .line 887
    :cond_4a
    const/16 v2, 0xa8f

    if-lt p0, v2, :cond_0

    const/16 v2, 0xa91

    if-gt p0, v2, :cond_4b

    move v0, v1

    goto/16 :goto_0

    .line 888
    :cond_4b
    const/16 v2, 0xa93

    if-lt p0, v2, :cond_0

    const/16 v2, 0xaa8

    if-gt p0, v2, :cond_4c

    move v0, v1

    goto/16 :goto_0

    .line 889
    :cond_4c
    const/16 v2, 0xaaa

    if-lt p0, v2, :cond_0

    const/16 v2, 0xab0

    if-gt p0, v2, :cond_4d

    move v0, v1

    goto/16 :goto_0

    .line 890
    :cond_4d
    const/16 v2, 0xab2

    if-lt p0, v2, :cond_0

    const/16 v2, 0xab3

    if-gt p0, v2, :cond_4e

    move v0, v1

    goto/16 :goto_0

    .line 891
    :cond_4e
    const/16 v2, 0xab5

    if-lt p0, v2, :cond_0

    const/16 v2, 0xab9

    if-gt p0, v2, :cond_4f

    move v0, v1

    goto/16 :goto_0

    .line 892
    :cond_4f
    const/16 v2, 0xabd

    if-ne p0, v2, :cond_50

    move v0, v1

    goto/16 :goto_0

    .line 893
    :cond_50
    const/16 v2, 0xae0

    if-ne p0, v2, :cond_51

    move v0, v1

    goto/16 :goto_0

    .line 894
    :cond_51
    const/16 v2, 0xb05

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb0c

    if-gt p0, v2, :cond_52

    move v0, v1

    goto/16 :goto_0

    .line 895
    :cond_52
    const/16 v2, 0xb0f

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb10

    if-gt p0, v2, :cond_53

    move v0, v1

    goto/16 :goto_0

    .line 896
    :cond_53
    const/16 v2, 0xb13

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb28

    if-gt p0, v2, :cond_54

    move v0, v1

    goto/16 :goto_0

    .line 897
    :cond_54
    const/16 v2, 0xb2a

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb30

    if-gt p0, v2, :cond_55

    move v0, v1

    goto/16 :goto_0

    .line 898
    :cond_55
    const/16 v2, 0xb32

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb33

    if-gt p0, v2, :cond_56

    move v0, v1

    goto/16 :goto_0

    .line 899
    :cond_56
    const/16 v2, 0xb36

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb39

    if-gt p0, v2, :cond_57

    move v0, v1

    goto/16 :goto_0

    .line 900
    :cond_57
    const/16 v2, 0xb3d

    if-ne p0, v2, :cond_58

    move v0, v1

    goto/16 :goto_0

    .line 901
    :cond_58
    const/16 v2, 0xb5c

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb5d

    if-gt p0, v2, :cond_59

    move v0, v1

    goto/16 :goto_0

    .line 902
    :cond_59
    const/16 v2, 0xb5f

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb61

    if-gt p0, v2, :cond_5a

    move v0, v1

    goto/16 :goto_0

    .line 903
    :cond_5a
    const/16 v2, 0xb85

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb8a

    if-gt p0, v2, :cond_5b

    move v0, v1

    goto/16 :goto_0

    .line 904
    :cond_5b
    const/16 v2, 0xb8e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb90

    if-gt p0, v2, :cond_5c

    move v0, v1

    goto/16 :goto_0

    .line 905
    :cond_5c
    const/16 v2, 0xb92

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb95

    if-gt p0, v2, :cond_5d

    move v0, v1

    goto/16 :goto_0

    .line 906
    :cond_5d
    const/16 v2, 0xb99

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb9a

    if-gt p0, v2, :cond_5e

    move v0, v1

    goto/16 :goto_0

    .line 907
    :cond_5e
    const/16 v2, 0xb9c

    if-ne p0, v2, :cond_5f

    move v0, v1

    goto/16 :goto_0

    .line 908
    :cond_5f
    const/16 v2, 0xb9e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xb9f

    if-gt p0, v2, :cond_60

    move v0, v1

    goto/16 :goto_0

    .line 909
    :cond_60
    const/16 v2, 0xba3

    if-lt p0, v2, :cond_0

    const/16 v2, 0xba4

    if-gt p0, v2, :cond_61

    move v0, v1

    goto/16 :goto_0

    .line 910
    :cond_61
    const/16 v2, 0xba8

    if-lt p0, v2, :cond_0

    const/16 v2, 0xbaa

    if-gt p0, v2, :cond_62

    move v0, v1

    goto/16 :goto_0

    .line 911
    :cond_62
    const/16 v2, 0xbae

    if-lt p0, v2, :cond_0

    const/16 v2, 0xbb5

    if-gt p0, v2, :cond_63

    move v0, v1

    goto/16 :goto_0

    .line 912
    :cond_63
    const/16 v2, 0xbb7

    if-lt p0, v2, :cond_0

    const/16 v2, 0xbb9

    if-gt p0, v2, :cond_64

    move v0, v1

    goto/16 :goto_0

    .line 913
    :cond_64
    const/16 v2, 0xc05

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc0c

    if-gt p0, v2, :cond_65

    move v0, v1

    goto/16 :goto_0

    .line 914
    :cond_65
    const/16 v2, 0xc0e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc10

    if-gt p0, v2, :cond_66

    move v0, v1

    goto/16 :goto_0

    .line 915
    :cond_66
    const/16 v2, 0xc12

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc28

    if-gt p0, v2, :cond_67

    move v0, v1

    goto/16 :goto_0

    .line 916
    :cond_67
    const/16 v2, 0xc2a

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc33

    if-gt p0, v2, :cond_68

    move v0, v1

    goto/16 :goto_0

    .line 917
    :cond_68
    const/16 v2, 0xc35

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc39

    if-gt p0, v2, :cond_69

    move v0, v1

    goto/16 :goto_0

    .line 918
    :cond_69
    const/16 v2, 0xc60

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc61

    if-gt p0, v2, :cond_6a

    move v0, v1

    goto/16 :goto_0

    .line 919
    :cond_6a
    const/16 v2, 0xc85

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc8c

    if-gt p0, v2, :cond_6b

    move v0, v1

    goto/16 :goto_0

    .line 920
    :cond_6b
    const/16 v2, 0xc8e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xc90

    if-gt p0, v2, :cond_6c

    move v0, v1

    goto/16 :goto_0

    .line 921
    :cond_6c
    const/16 v2, 0xc92

    if-lt p0, v2, :cond_0

    const/16 v2, 0xca8

    if-gt p0, v2, :cond_6d

    move v0, v1

    goto/16 :goto_0

    .line 922
    :cond_6d
    const/16 v2, 0xcaa

    if-lt p0, v2, :cond_0

    const/16 v2, 0xcb3

    if-gt p0, v2, :cond_6e

    move v0, v1

    goto/16 :goto_0

    .line 923
    :cond_6e
    const/16 v2, 0xcb5

    if-lt p0, v2, :cond_0

    const/16 v2, 0xcb9

    if-gt p0, v2, :cond_6f

    move v0, v1

    goto/16 :goto_0

    .line 924
    :cond_6f
    const/16 v2, 0xcde

    if-ne p0, v2, :cond_70

    move v0, v1

    goto/16 :goto_0

    .line 925
    :cond_70
    const/16 v2, 0xce0

    if-lt p0, v2, :cond_0

    const/16 v2, 0xce1

    if-gt p0, v2, :cond_71

    move v0, v1

    goto/16 :goto_0

    .line 926
    :cond_71
    const/16 v2, 0xd05

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd0c

    if-gt p0, v2, :cond_72

    move v0, v1

    goto/16 :goto_0

    .line 927
    :cond_72
    const/16 v2, 0xd0e

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd10

    if-gt p0, v2, :cond_73

    move v0, v1

    goto/16 :goto_0

    .line 928
    :cond_73
    const/16 v2, 0xd12

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd28

    if-gt p0, v2, :cond_74

    move v0, v1

    goto/16 :goto_0

    .line 929
    :cond_74
    const/16 v2, 0xd2a

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd39

    if-gt p0, v2, :cond_75

    move v0, v1

    goto/16 :goto_0

    .line 930
    :cond_75
    const/16 v2, 0xd60

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd61

    if-gt p0, v2, :cond_76

    move v0, v1

    goto/16 :goto_0

    .line 931
    :cond_76
    const/16 v2, 0xe01

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe2e

    if-gt p0, v2, :cond_77

    move v0, v1

    goto/16 :goto_0

    .line 932
    :cond_77
    const/16 v2, 0xe30

    if-ne p0, v2, :cond_78

    move v0, v1

    goto/16 :goto_0

    .line 933
    :cond_78
    const/16 v2, 0xe32

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe33

    if-gt p0, v2, :cond_79

    move v0, v1

    goto/16 :goto_0

    .line 934
    :cond_79
    const/16 v2, 0xe40

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe45

    if-gt p0, v2, :cond_7a

    move v0, v1

    goto/16 :goto_0

    .line 935
    :cond_7a
    const/16 v2, 0xe81

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe82

    if-gt p0, v2, :cond_7b

    move v0, v1

    goto/16 :goto_0

    .line 936
    :cond_7b
    const/16 v2, 0xe84

    if-ne p0, v2, :cond_7c

    move v0, v1

    goto/16 :goto_0

    .line 937
    :cond_7c
    const/16 v2, 0xe87

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe88

    if-gt p0, v2, :cond_7d

    move v0, v1

    goto/16 :goto_0

    .line 938
    :cond_7d
    const/16 v2, 0xe8a

    if-ne p0, v2, :cond_7e

    move v0, v1

    goto/16 :goto_0

    .line 939
    :cond_7e
    const/16 v2, 0xe8d

    if-ne p0, v2, :cond_7f

    move v0, v1

    goto/16 :goto_0

    .line 940
    :cond_7f
    const/16 v2, 0xe94

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe97

    if-gt p0, v2, :cond_80

    move v0, v1

    goto/16 :goto_0

    .line 941
    :cond_80
    const/16 v2, 0xe99

    if-lt p0, v2, :cond_0

    const/16 v2, 0xe9f

    if-gt p0, v2, :cond_81

    move v0, v1

    goto/16 :goto_0

    .line 942
    :cond_81
    const/16 v2, 0xea1

    if-lt p0, v2, :cond_0

    const/16 v2, 0xea3

    if-gt p0, v2, :cond_82

    move v0, v1

    goto/16 :goto_0

    .line 943
    :cond_82
    const/16 v2, 0xea5

    if-ne p0, v2, :cond_83

    move v0, v1

    goto/16 :goto_0

    .line 944
    :cond_83
    const/16 v2, 0xea7

    if-ne p0, v2, :cond_84

    move v0, v1

    goto/16 :goto_0

    .line 945
    :cond_84
    const/16 v2, 0xeaa

    if-lt p0, v2, :cond_0

    const/16 v2, 0xeab

    if-gt p0, v2, :cond_85

    move v0, v1

    goto/16 :goto_0

    .line 946
    :cond_85
    const/16 v2, 0xead

    if-lt p0, v2, :cond_0

    const/16 v2, 0xeae

    if-gt p0, v2, :cond_86

    move v0, v1

    goto/16 :goto_0

    .line 947
    :cond_86
    const/16 v2, 0xeb0

    if-ne p0, v2, :cond_87

    move v0, v1

    goto/16 :goto_0

    .line 948
    :cond_87
    const/16 v2, 0xeb2

    if-lt p0, v2, :cond_0

    const/16 v2, 0xeb3

    if-gt p0, v2, :cond_88

    move v0, v1

    goto/16 :goto_0

    .line 949
    :cond_88
    const/16 v2, 0xebd

    if-ne p0, v2, :cond_89

    move v0, v1

    goto/16 :goto_0

    .line 950
    :cond_89
    const/16 v2, 0xec0

    if-lt p0, v2, :cond_0

    const/16 v2, 0xec4

    if-gt p0, v2, :cond_8a

    move v0, v1

    goto/16 :goto_0

    .line 951
    :cond_8a
    const/16 v2, 0xf40

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf47

    if-gt p0, v2, :cond_8b

    move v0, v1

    goto/16 :goto_0

    .line 952
    :cond_8b
    const/16 v2, 0xf49

    if-lt p0, v2, :cond_0

    const/16 v2, 0xf69

    if-gt p0, v2, :cond_8c

    move v0, v1

    goto/16 :goto_0

    .line 953
    :cond_8c
    const/16 v2, 0x10a0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x10c5

    if-gt p0, v2, :cond_8d

    move v0, v1

    goto/16 :goto_0

    .line 954
    :cond_8d
    const/16 v2, 0x10d0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x10f6

    if-gt p0, v2, :cond_8e

    move v0, v1

    goto/16 :goto_0

    .line 955
    :cond_8e
    const/16 v2, 0x1100

    if-ne p0, v2, :cond_8f

    move v0, v1

    goto/16 :goto_0

    .line 956
    :cond_8f
    const/16 v2, 0x1102

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1103

    if-gt p0, v2, :cond_90

    move v0, v1

    goto/16 :goto_0

    .line 957
    :cond_90
    const/16 v2, 0x1105

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1107

    if-gt p0, v2, :cond_91

    move v0, v1

    goto/16 :goto_0

    .line 958
    :cond_91
    const/16 v2, 0x1109

    if-ne p0, v2, :cond_92

    move v0, v1

    goto/16 :goto_0

    .line 959
    :cond_92
    const/16 v2, 0x110b

    if-lt p0, v2, :cond_0

    const/16 v2, 0x110c

    if-gt p0, v2, :cond_93

    move v0, v1

    goto/16 :goto_0

    .line 960
    :cond_93
    const/16 v2, 0x110e

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1112

    if-gt p0, v2, :cond_94

    move v0, v1

    goto/16 :goto_0

    .line 961
    :cond_94
    const/16 v2, 0x113c

    if-ne p0, v2, :cond_95

    move v0, v1

    goto/16 :goto_0

    .line 962
    :cond_95
    const/16 v2, 0x113e

    if-ne p0, v2, :cond_96

    move v0, v1

    goto/16 :goto_0

    .line 963
    :cond_96
    const/16 v2, 0x1140

    if-ne p0, v2, :cond_97

    move v0, v1

    goto/16 :goto_0

    .line 964
    :cond_97
    const/16 v2, 0x114c

    if-ne p0, v2, :cond_98

    move v0, v1

    goto/16 :goto_0

    .line 965
    :cond_98
    const/16 v2, 0x114e

    if-ne p0, v2, :cond_99

    move v0, v1

    goto/16 :goto_0

    .line 966
    :cond_99
    const/16 v2, 0x1150

    if-ne p0, v2, :cond_9a

    move v0, v1

    goto/16 :goto_0

    .line 967
    :cond_9a
    const/16 v2, 0x1154

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1155

    if-gt p0, v2, :cond_9b

    move v0, v1

    goto/16 :goto_0

    .line 968
    :cond_9b
    const/16 v2, 0x1159

    if-ne p0, v2, :cond_9c

    move v0, v1

    goto/16 :goto_0

    .line 969
    :cond_9c
    const/16 v2, 0x115f

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1161

    if-gt p0, v2, :cond_9d

    move v0, v1

    goto/16 :goto_0

    .line 970
    :cond_9d
    const/16 v2, 0x1163

    if-ne p0, v2, :cond_9e

    move v0, v1

    goto/16 :goto_0

    .line 971
    :cond_9e
    const/16 v2, 0x1165

    if-ne p0, v2, :cond_9f

    move v0, v1

    goto/16 :goto_0

    .line 972
    :cond_9f
    const/16 v2, 0x1167

    if-ne p0, v2, :cond_a0

    move v0, v1

    goto/16 :goto_0

    .line 973
    :cond_a0
    const/16 v2, 0x1169

    if-ne p0, v2, :cond_a1

    move v0, v1

    goto/16 :goto_0

    .line 974
    :cond_a1
    const/16 v2, 0x116d

    if-lt p0, v2, :cond_0

    const/16 v2, 0x116e

    if-gt p0, v2, :cond_a2

    move v0, v1

    goto/16 :goto_0

    .line 975
    :cond_a2
    const/16 v2, 0x1172

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1173

    if-gt p0, v2, :cond_a3

    move v0, v1

    goto/16 :goto_0

    .line 976
    :cond_a3
    const/16 v2, 0x1175

    if-ne p0, v2, :cond_a4

    move v0, v1

    goto/16 :goto_0

    .line 977
    :cond_a4
    const/16 v2, 0x119e

    if-ne p0, v2, :cond_a5

    move v0, v1

    goto/16 :goto_0

    .line 978
    :cond_a5
    const/16 v2, 0x11a8

    if-ne p0, v2, :cond_a6

    move v0, v1

    goto/16 :goto_0

    .line 979
    :cond_a6
    const/16 v2, 0x11ab

    if-ne p0, v2, :cond_a7

    move v0, v1

    goto/16 :goto_0

    .line 980
    :cond_a7
    const/16 v2, 0x11ae

    if-lt p0, v2, :cond_0

    const/16 v2, 0x11af

    if-gt p0, v2, :cond_a8

    move v0, v1

    goto/16 :goto_0

    .line 981
    :cond_a8
    const/16 v2, 0x11b7

    if-lt p0, v2, :cond_0

    const/16 v2, 0x11b8

    if-gt p0, v2, :cond_a9

    move v0, v1

    goto/16 :goto_0

    .line 982
    :cond_a9
    const/16 v2, 0x11ba

    if-ne p0, v2, :cond_aa

    move v0, v1

    goto/16 :goto_0

    .line 983
    :cond_aa
    const/16 v2, 0x11bc

    if-lt p0, v2, :cond_0

    const/16 v2, 0x11c2

    if-gt p0, v2, :cond_ab

    move v0, v1

    goto/16 :goto_0

    .line 984
    :cond_ab
    const/16 v2, 0x11eb

    if-ne p0, v2, :cond_ac

    move v0, v1

    goto/16 :goto_0

    .line 985
    :cond_ac
    const/16 v2, 0x11f0

    if-ne p0, v2, :cond_ad

    move v0, v1

    goto/16 :goto_0

    .line 986
    :cond_ad
    const/16 v2, 0x11f9

    if-ne p0, v2, :cond_ae

    move v0, v1

    goto/16 :goto_0

    .line 987
    :cond_ae
    const/16 v2, 0x1e00

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1e9b

    if-gt p0, v2, :cond_af

    move v0, v1

    goto/16 :goto_0

    .line 988
    :cond_af
    const/16 v2, 0x1ea0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1ef9

    if-gt p0, v2, :cond_b0

    move v0, v1

    goto/16 :goto_0

    .line 989
    :cond_b0
    const/16 v2, 0x1f00

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f15

    if-gt p0, v2, :cond_b1

    move v0, v1

    goto/16 :goto_0

    .line 990
    :cond_b1
    const/16 v2, 0x1f18

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f1d

    if-gt p0, v2, :cond_b2

    move v0, v1

    goto/16 :goto_0

    .line 991
    :cond_b2
    const/16 v2, 0x1f20

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f45

    if-gt p0, v2, :cond_b3

    move v0, v1

    goto/16 :goto_0

    .line 992
    :cond_b3
    const/16 v2, 0x1f48

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f4d

    if-gt p0, v2, :cond_b4

    move v0, v1

    goto/16 :goto_0

    .line 993
    :cond_b4
    const/16 v2, 0x1f50

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f57

    if-gt p0, v2, :cond_b5

    move v0, v1

    goto/16 :goto_0

    .line 994
    :cond_b5
    const/16 v2, 0x1f59

    if-ne p0, v2, :cond_b6

    move v0, v1

    goto/16 :goto_0

    .line 995
    :cond_b6
    const/16 v2, 0x1f5b

    if-ne p0, v2, :cond_b7

    move v0, v1

    goto/16 :goto_0

    .line 996
    :cond_b7
    const/16 v2, 0x1f5d

    if-ne p0, v2, :cond_b8

    move v0, v1

    goto/16 :goto_0

    .line 997
    :cond_b8
    const/16 v2, 0x1f5f

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1f7d

    if-gt p0, v2, :cond_b9

    move v0, v1

    goto/16 :goto_0

    .line 998
    :cond_b9
    const/16 v2, 0x1f80

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1fb4

    if-gt p0, v2, :cond_ba

    move v0, v1

    goto/16 :goto_0

    .line 999
    :cond_ba
    const/16 v2, 0x1fb6

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1fbc

    if-gt p0, v2, :cond_bb

    move v0, v1

    goto/16 :goto_0

    .line 1000
    :cond_bb
    const/16 v2, 0x1fbe

    if-ne p0, v2, :cond_bc

    move v0, v1

    goto/16 :goto_0

    .line 1001
    :cond_bc
    const/16 v2, 0x1fc2

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1fc4

    if-gt p0, v2, :cond_bd

    move v0, v1

    goto/16 :goto_0

    .line 1002
    :cond_bd
    const/16 v2, 0x1fc6

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1fcc

    if-gt p0, v2, :cond_be

    move v0, v1

    goto/16 :goto_0

    .line 1003
    :cond_be
    const/16 v2, 0x1fd0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1fd3

    if-gt p0, v2, :cond_bf

    move v0, v1

    goto/16 :goto_0

    .line 1004
    :cond_bf
    const/16 v2, 0x1fd6

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1fdb

    if-gt p0, v2, :cond_c0

    move v0, v1

    goto/16 :goto_0

    .line 1005
    :cond_c0
    const/16 v2, 0x1fe0

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1fec

    if-gt p0, v2, :cond_c1

    move v0, v1

    goto/16 :goto_0

    .line 1006
    :cond_c1
    const/16 v2, 0x1ff2

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1ff4

    if-gt p0, v2, :cond_c2

    move v0, v1

    goto/16 :goto_0

    .line 1007
    :cond_c2
    const/16 v2, 0x1ff6

    if-lt p0, v2, :cond_0

    const/16 v2, 0x1ffc

    if-gt p0, v2, :cond_c3

    move v0, v1

    goto/16 :goto_0

    .line 1008
    :cond_c3
    const/16 v2, 0x2126

    if-ne p0, v2, :cond_c4

    move v0, v1

    goto/16 :goto_0

    .line 1009
    :cond_c4
    const/16 v2, 0x212a

    if-lt p0, v2, :cond_0

    const/16 v2, 0x212b

    if-gt p0, v2, :cond_c5

    move v0, v1

    goto/16 :goto_0

    .line 1010
    :cond_c5
    const/16 v2, 0x212e

    if-ne p0, v2, :cond_c6

    move v0, v1

    goto/16 :goto_0

    .line 1011
    :cond_c6
    const/16 v2, 0x2180

    if-lt p0, v2, :cond_0

    const/16 v2, 0x2182

    if-gt p0, v2, :cond_c7

    move v0, v1

    goto/16 :goto_0

    .line 1012
    :cond_c7
    const/16 v2, 0x3007

    if-ne p0, v2, :cond_c8

    move v0, v1

    goto/16 :goto_0

    .line 1013
    :cond_c8
    const/16 v2, 0x3021

    if-lt p0, v2, :cond_0

    const/16 v2, 0x3029

    if-gt p0, v2, :cond_c9

    move v0, v1

    goto/16 :goto_0

    .line 1014
    :cond_c9
    const/16 v2, 0x3041

    if-lt p0, v2, :cond_0

    const/16 v2, 0x3094

    if-gt p0, v2, :cond_ca

    move v0, v1

    goto/16 :goto_0

    .line 1015
    :cond_ca
    const/16 v2, 0x30a1

    if-lt p0, v2, :cond_0

    const/16 v2, 0x30fa

    if-gt p0, v2, :cond_cb

    move v0, v1

    goto/16 :goto_0

    .line 1016
    :cond_cb
    const/16 v2, 0x3105

    if-lt p0, v2, :cond_0

    const/16 v2, 0x312c

    if-gt p0, v2, :cond_cc

    move v0, v1

    goto/16 :goto_0

    .line 1017
    :cond_cc
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_0

    const v2, 0x9fa5

    if-gt p0, v2, :cond_cd

    move v0, v1

    goto/16 :goto_0

    .line 1018
    :cond_cd
    const v2, 0xac00

    if-lt p0, v2, :cond_0

    const v2, 0xd7a3

    if-gt p0, v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public static isXMLLetterOrDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 797
    invoke-static {p0}, Lorg/jdom/Verifier;->isXMLLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/jdom/Verifier;->isXMLDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXMLNameCharacter(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 764
    invoke-static {p0}, Lorg/jdom/Verifier;->isXMLLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/jdom/Verifier;->isXMLDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lorg/jdom/Verifier;->isXMLCombiningChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/jdom/Verifier;->isXMLExtender(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXMLNameStartCharacter(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 782
    invoke-static {p0}, Lorg/jdom/Verifier;->isXMLLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXMLPublicIDCharacter(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 520
    const/16 v1, 0x61

    if-lt p0, v1, :cond_1

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_1

    .line 535
    :cond_0
    :goto_0
    return v0

    .line 521
    :cond_1
    const/16 v1, 0x3f

    if-lt p0, v1, :cond_2

    const/16 v1, 0x5a

    if-le p0, v1, :cond_0

    .line 522
    :cond_2
    const/16 v1, 0x27

    if-lt p0, v1, :cond_3

    const/16 v1, 0x3b

    if-le p0, v1, :cond_0

    .line 524
    :cond_3
    const/16 v1, 0x20

    if-eq p0, v1, :cond_0

    .line 525
    const/16 v1, 0x21

    if-eq p0, v1, :cond_0

    .line 526
    const/16 v1, 0x3d

    if-eq p0, v1, :cond_0

    .line 527
    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    .line 528
    const/16 v1, 0x24

    if-eq p0, v1, :cond_0

    .line 529
    const/16 v1, 0x5f

    if-eq p0, v1, :cond_0

    .line 530
    const/16 v1, 0x25

    if-eq p0, v1, :cond_0

    .line 531
    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    .line 532
    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    .line 533
    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    .line 535
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXMLWhitespace(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1231
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    .line 1232
    :cond_0
    const/4 v0, 0x1

    .line 1234
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
