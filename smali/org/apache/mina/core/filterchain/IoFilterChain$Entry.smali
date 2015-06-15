.class public interface abstract Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
.super Ljava/lang/Object;
.source "IoFilterChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/filterchain/IoFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Entry"
.end annotation


# virtual methods
.method public abstract addAfter(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
.end method

.method public abstract addBefore(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
.end method

.method public abstract getFilter()Lorg/apache/mina/core/filterchain/IoFilter;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
.end method

.method public abstract remove()V
.end method

.method public abstract replace(Lorg/apache/mina/core/filterchain/IoFilter;)V
.end method
