.class public interface abstract Lorg/jdom/Parent;
.super Ljava/lang/Object;
.source "Parent.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract cloneContent()Ljava/util/List;
.end method

.method public abstract getContent()Ljava/util/List;
.end method

.method public abstract getContent(Lorg/jdom/filter/Filter;)Ljava/util/List;
.end method

.method public abstract getContent(I)Lorg/jdom/Content;
.end method

.method public abstract getContentSize()I
.end method

.method public abstract getDescendants()Ljava/util/Iterator;
.end method

.method public abstract getDescendants(Lorg/jdom/filter/Filter;)Ljava/util/Iterator;
.end method

.method public abstract getDocument()Lorg/jdom/Document;
.end method

.method public abstract getParent()Lorg/jdom/Parent;
.end method

.method public abstract indexOf(Lorg/jdom/Content;)I
.end method

.method public abstract removeContent()Ljava/util/List;
.end method

.method public abstract removeContent(Lorg/jdom/filter/Filter;)Ljava/util/List;
.end method

.method public abstract removeContent(I)Lorg/jdom/Content;
.end method

.method public abstract removeContent(Lorg/jdom/Content;)Z
.end method
