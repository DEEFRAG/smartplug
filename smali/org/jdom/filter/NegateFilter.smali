.class final Lorg/jdom/filter/NegateFilter;
.super Lorg/jdom/filter/AbstractFilter;
.source "NegateFilter.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: NegateFilter.java,v $ $Revision: 1.4 $ $Date: 2007/11/10 05:29:00 $"


# instance fields
.field private filter:Lorg/jdom/filter/Filter;


# direct methods
.method public constructor <init>(Lorg/jdom/filter/Filter;)V
    .locals 0
    .param p1, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/jdom/filter/NegateFilter;->filter:Lorg/jdom/filter/Filter;

    .line 81
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 92
    if-ne p0, p1, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 99
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 96
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/jdom/filter/NegateFilter;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lorg/jdom/filter/NegateFilter;->filter:Lorg/jdom/filter/Filter;

    check-cast p1, Lorg/jdom/filter/NegateFilter;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lorg/jdom/filter/NegateFilter;->filter:Lorg/jdom/filter/Filter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 99
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/jdom/filter/NegateFilter;->filter:Lorg/jdom/filter/Filter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/jdom/filter/NegateFilter;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v0, p1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public negate()Lorg/jdom/filter/Filter;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/jdom/filter/NegateFilter;->filter:Lorg/jdom/filter/Filter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "[NegateFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom/filter/NegateFilter;->filter:Lorg/jdom/filter/Filter;

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
