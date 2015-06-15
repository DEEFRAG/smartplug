.class public Lorg/jdom/filter/ElementFilter;
.super Lorg/jdom/filter/AbstractFilter;
.source "ElementFilter.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: ElementFilter.java,v $ $Revision: 1.20 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $"


# instance fields
.field private name:Ljava/lang/String;

.field private transient namespace:Lorg/jdom/Namespace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jdom/Namespace;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Namespace;)V
    .locals 0
    .param p1, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    .line 101
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 182
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "prefix":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 185
    .local v1, "uri":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 186
    check-cast v0, Ljava/lang/String;

    .end local v0    # "prefix":Ljava/lang/Object;
    check-cast v1, Ljava/lang/String;

    .end local v1    # "uri":Ljava/lang/Object;
    invoke-static {v0, v1}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v2

    iput-object v2, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    .line 188
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 167
    iget-object v0, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    if-ne p0, p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v1

    .line 141
    :cond_1
    instance-of v3, p1, Lorg/jdom/filter/ElementFilter;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 143
    check-cast v0, Lorg/jdom/filter/ElementFilter;

    .line 145
    .local v0, "filter":Lorg/jdom/filter/ElementFilter;
    iget-object v3, p0, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    iget-object v4, v0, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 146
    :cond_5
    iget-object v3, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    iget-object v4, v0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v3, v4}, Lorg/jdom/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, v0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v2, p0, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 155
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1d

    iget-object v3, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v1}, Lorg/jdom/Namespace;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 156
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 154
    goto :goto_0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 122
    instance-of v2, p1, Lorg/jdom/Element;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 123
    check-cast v0, Lorg/jdom/Element;

    .line 124
    .local v0, "el":Lorg/jdom/Element;
    iget-object v2, p0, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jdom/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 128
    .end local v0    # "el":Lorg/jdom/Element;
    :cond_2
    return v1
.end method
