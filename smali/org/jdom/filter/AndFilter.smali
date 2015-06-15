.class final Lorg/jdom/filter/AndFilter;
.super Lorg/jdom/filter/AbstractFilter;
.source "AndFilter.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: AndFilter.java,v $ $Revision: 1.4 $ $Date: 2007/11/10 05:29:00 $"


# instance fields
.field private left:Lorg/jdom/filter/Filter;

.field private right:Lorg/jdom/filter/Filter;


# direct methods
.method public constructor <init>(Lorg/jdom/filter/Filter;Lorg/jdom/filter/Filter;)V
    .locals 2
    .param p1, "left"    # Lorg/jdom/filter/Filter;
    .param p2, "right"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    .line 85
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null filter not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    iput-object p1, p0, Lorg/jdom/filter/AndFilter;->left:Lorg/jdom/filter/Filter;

    .line 89
    iput-object p2, p0, Lorg/jdom/filter/AndFilter;->right:Lorg/jdom/filter/Filter;

    .line 90
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 97
    if-ne p0, p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    instance-of v2, p1, Lorg/jdom/filter/AndFilter;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 102
    check-cast v0, Lorg/jdom/filter/AndFilter;

    .line 103
    .local v0, "filter":Lorg/jdom/filter/AndFilter;
    iget-object v2, p0, Lorg/jdom/filter/AndFilter;->left:Lorg/jdom/filter/Filter;

    iget-object v3, v0, Lorg/jdom/filter/AndFilter;->left:Lorg/jdom/filter/Filter;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jdom/filter/AndFilter;->right:Lorg/jdom/filter/Filter;

    iget-object v3, v0, Lorg/jdom/filter/AndFilter;->right:Lorg/jdom/filter/Filter;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lorg/jdom/filter/AndFilter;->left:Lorg/jdom/filter/Filter;

    iget-object v3, v0, Lorg/jdom/filter/AndFilter;->right:Lorg/jdom/filter/Filter;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/jdom/filter/AndFilter;->right:Lorg/jdom/filter/Filter;

    iget-object v3, v0, Lorg/jdom/filter/AndFilter;->left:Lorg/jdom/filter/Filter;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    .end local v0    # "filter":Lorg/jdom/filter/AndFilter;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/jdom/filter/AndFilter;->left:Lorg/jdom/filter/Filter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/jdom/filter/AndFilter;->right:Lorg/jdom/filter/Filter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jdom/filter/AndFilter;->left:Lorg/jdom/filter/Filter;

    invoke-interface {v0, p1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jdom/filter/AndFilter;->right:Lorg/jdom/filter/Filter;

    invoke-interface {v0, p1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "[AndFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom/filter/AndFilter;->left:Lorg/jdom/filter/Filter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom/filter/AndFilter;->right:Lorg/jdom/filter/Filter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
