.class public abstract Lorg/jdom/filter/AbstractFilter;
.super Ljava/lang/Object;
.source "AbstractFilter.java"

# interfaces
.implements Lorg/jdom/filter/Filter;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: AbstractFilter.java,v $ $Revision: 1.6 $ $Date: 2007/11/10 05:29:00 $"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public and(Lorg/jdom/filter/Filter;)Lorg/jdom/filter/Filter;
    .locals 1
    .param p1, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 79
    new-instance v0, Lorg/jdom/filter/AndFilter;

    invoke-direct {v0, p0, p1}, Lorg/jdom/filter/AndFilter;-><init>(Lorg/jdom/filter/Filter;Lorg/jdom/filter/Filter;)V

    return-object v0
.end method

.method public negate()Lorg/jdom/filter/Filter;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lorg/jdom/filter/NegateFilter;

    invoke-direct {v0, p0}, Lorg/jdom/filter/NegateFilter;-><init>(Lorg/jdom/filter/Filter;)V

    return-object v0
.end method

.method public or(Lorg/jdom/filter/Filter;)Lorg/jdom/filter/Filter;
    .locals 1
    .param p1, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 75
    new-instance v0, Lorg/jdom/filter/OrFilter;

    invoke-direct {v0, p0, p1}, Lorg/jdom/filter/OrFilter;-><init>(Lorg/jdom/filter/Filter;Lorg/jdom/filter/Filter;)V

    return-object v0
.end method
