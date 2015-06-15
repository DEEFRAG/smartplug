.class public Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
.super Ljava/lang/Object;
.source "AbstractHashedMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/jivesoftware/smack/util/collections/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HashEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;",
        "Lorg/jivesoftware/smack/util/collections/KeyValue",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field protected hashCode:I

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;ITK;TV;)V"
        }
    .end annotation

    .prologue
    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 1035
    iput p2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    .line 1036
    iput-object p3, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    .line 1037
    iput-object p4, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    .line 1038
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1014
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1014
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1059
    if-ne p1, p0, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return v0

    .line 1062
    :cond_1
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_2

    move v0, v1

    .line 1063
    goto :goto_0

    .line 1065
    :cond_2
    check-cast p1, Ljava/util/Map$Entry;

    .line 1066
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1041
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1049
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1070
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setKey(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 1045
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    .line 1046
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1053
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    .line 1054
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    .line 1055
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
