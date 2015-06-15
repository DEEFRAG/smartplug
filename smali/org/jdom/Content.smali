.class public abstract Lorg/jdom/Content;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected parent:Lorg/jdom/Parent;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    .line 81
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 160
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Content;

    .line 161
    .local v0, "c":Lorg/jdom/Content;
    const/4 v3, 0x0

    iput-object v3, v0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0    # "c":Lorg/jdom/Content;
    :goto_0
    return-object v0

    .line 163
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    move-object v0, v2

    .line 166
    goto :goto_0
.end method

.method public detach()Lorg/jdom/Content;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    invoke-interface {v0, p0}, Lorg/jdom/Parent;->removeContent(Lorg/jdom/Content;)Z

    .line 93
    :cond_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    .line 181
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDocument()Lorg/jdom/Document;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    invoke-interface {v0}, Lorg/jdom/Parent;->getDocument()Lorg/jdom/Document;

    move-result-object v0

    goto :goto_0
.end method

.method public getParent()Lorg/jdom/Parent;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    return-object v0
.end method

.method public getParentElement()Lorg/jdom/Element;
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lorg/jdom/Content;->getParent()Lorg/jdom/Parent;

    move-result-object v0

    .line 118
    .local v0, "parent":Lorg/jdom/Parent;
    instance-of v1, v0, Lorg/jdom/Element;

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    check-cast v1, Lorg/jdom/Element;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected setParent(Lorg/jdom/Parent;)Lorg/jdom/Content;
    .locals 0
    .param p1, "parent"    # Lorg/jdom/Parent;

    .prologue
    .line 129
    iput-object p1, p0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    .line 130
    return-object p0
.end method
