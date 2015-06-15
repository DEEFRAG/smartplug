.class public Lorg/dom4j/util/AttributeHelper;
.super Ljava/lang/Object;
.source "AttributeHelper.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method protected static booleanValue(Lorg/dom4j/Attribute;)Z
    .locals 4
    .param p0, "attribute"    # Lorg/dom4j/Attribute;

    .prologue
    const/4 v2, 0x0

    .line 36
    if-nez p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v2

    .line 40
    :cond_1
    invoke-interface {p0}, Lorg/dom4j/Attribute;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 44
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 45
    check-cast v0, Ljava/lang/Boolean;

    .line 47
    .local v0, "b":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 49
    .end local v0    # "b":Ljava/lang/Boolean;
    :cond_2
    const-string v2, "true"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static booleanValue(Lorg/dom4j/Element;Ljava/lang/String;)Z
    .locals 1
    .param p0, "element"    # Lorg/dom4j/Element;
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-interface {p0, p1}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/util/AttributeHelper;->booleanValue(Lorg/dom4j/Attribute;)Z

    move-result v0

    return v0
.end method

.method public static booleanValue(Lorg/dom4j/Element;Lorg/dom4j/QName;)Z
    .locals 1
    .param p0, "element"    # Lorg/dom4j/Element;
    .param p1, "attributeQName"    # Lorg/dom4j/QName;

    .prologue
    .line 32
    invoke-interface {p0, p1}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/util/AttributeHelper;->booleanValue(Lorg/dom4j/Attribute;)Z

    move-result v0

    return v0
.end method
