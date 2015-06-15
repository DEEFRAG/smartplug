.class public Lorg/xbill/DNS/KEYRecord;
.super Lorg/xbill/DNS/KEYBase;
.source "KEYRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/KEYRecord$Flags;,
        Lorg/xbill/DNS/KEYRecord$Protocol;
    }
.end annotation


# static fields
.field public static final FLAG_NOAUTH:I = 0x8000

.field public static final FLAG_NOCONF:I = 0x4000

.field public static final FLAG_NOKEY:I = 0xc000

.field public static final OWNER_HOST:I = 0x200

.field public static final OWNER_USER:I = 0x0

.field public static final OWNER_ZONE:I = 0x100

.field public static final PROTOCOL_ANY:I = 0xff

.field public static final PROTOCOL_DNSSEC:I = 0x3

.field public static final PROTOCOL_EMAIL:I = 0x2

.field public static final PROTOCOL_IPSEC:I = 0x4

.field public static final PROTOCOL_TLS:I = 0x1

.field private static final serialVersionUID:J = 0x589e41991f74c08aL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lorg/xbill/DNS/KEYBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIIILjava/security/PublicKey;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 326
    const/16 v4, 0x19

    move-object/from16 v0, p8

    move/from16 v1, p7

    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->fromPublicKey(Ljava/security/PublicKey;I)[B

    move-result-object v11

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Lorg/xbill/DNS/KEYBase;-><init>(Lorg/xbill/DNS/Name;IIJIII[B)V

    .line 328
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/xbill/DNS/KEYRecord;->publicKey:Ljava/security/PublicKey;

    .line 329
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B)V
    .locals 10

    .prologue
    .line 310
    const/16 v2, 0x19

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/KEYBase;-><init>(Lorg/xbill/DNS/Name;IIJIII[B)V

    .line 311
    return-void
.end method


# virtual methods
.method public bridge synthetic getAlgorithm()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lorg/xbill/DNS/KEYBase;->getAlgorithm()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFlags()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lorg/xbill/DNS/KEYBase;->getFlags()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFootprint()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lorg/xbill/DNS/KEYBase;->getFootprint()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getKey()[B
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 296
    new-instance v0, Lorg/xbill/DNS/KEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/KEYRecord;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getProtocol()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lorg/xbill/DNS/KEYBase;->getProtocol()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPublicKey()Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-super {p0}, Lorg/xbill/DNS/KEYBase;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v2, 0xc000

    .line 333
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Flags;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/KEYRecord;->flags:I

    .line 335
    iget v1, p0, Lorg/xbill/DNS/KEYRecord;->flags:I

    if-gez v1, :cond_0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 337
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Protocol;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/KEYRecord;->proto:I

    .line 339
    iget v1, p0, Lorg/xbill/DNS/KEYRecord;->proto:I

    if-gez v1, :cond_1

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 341
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC$Algorithm;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/KEYRecord;->alg:I

    .line 343
    iget v1, p0, Lorg/xbill/DNS/KEYRecord;->alg:I

    if-gez v1, :cond_2

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 346
    :cond_2
    iget v0, p0, Lorg/xbill/DNS/KEYRecord;->flags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/KEYRecord;->key:[B

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_3
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getBase64()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/KEYRecord;->key:[B

    goto :goto_0
.end method
