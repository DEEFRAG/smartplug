.class public Lorg/xbill/DNS/TSIG$StreamVerifier;
.super Ljava/lang/Object;
.source "TSIG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/TSIG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamVerifier"
.end annotation


# instance fields
.field private key:Lorg/xbill/DNS/TSIG;

.field private lastTSIG:Lorg/xbill/DNS/TSIGRecord;

.field private lastsigned:I

.field private nresponses:I

.field private verifier:Lorg/xbill/DNS/utils/HMAC;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 3

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    .line 438
    new-instance v0, Lorg/xbill/DNS/utils/HMAC;

    iget-object v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    # getter for: Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;
    invoke-static {v1}, Lorg/xbill/DNS/TSIG;->access$000(Lorg/xbill/DNS/TSIG;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    # getter for: Lorg/xbill/DNS/TSIG;->key:[B
    invoke-static {v2}, Lorg/xbill/DNS/TSIG;->access$100(Lorg/xbill/DNS/TSIG;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 440
    iput-object p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 441
    return-void
.end method


# virtual methods
.method public verify(Lorg/xbill/DNS/Message;[B)I
    .locals 10

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 457
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v3

    .line 459
    iget v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 461
    iget v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    if-ne v0, v2, :cond_1

    .line 462
    iget-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    iget-object v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    invoke-virtual {v0, p1, p2, v1}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I

    move-result v0

    .line 463
    if-nez v0, :cond_0

    .line 464
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v1

    .line 465
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 466
    array-length v4, v1

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 467
    iget-object v4, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 468
    iget-object v2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 470
    :cond_0
    iput-object v3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 535
    :goto_0
    return v0

    .line 474
    :cond_1
    if-eqz v3, :cond_2

    .line 475
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 476
    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v4

    .line 477
    if-eqz v3, :cond_3

    .line 478
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 479
    :cond_3
    iget-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 482
    if-nez v3, :cond_6

    .line 483
    array-length v0, p2

    array-length v5, v4

    sub-int/2addr v0, v5

    .line 486
    :goto_1
    iget-object v5, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    array-length v4, v4

    invoke-virtual {v5, p2, v4, v0}, Lorg/xbill/DNS/utils/HMAC;->update([BII)V

    .line 488
    if-eqz v3, :cond_7

    .line 489
    iget v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    iput v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    .line 490
    iput-object v3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 503
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    iget-object v4, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    # getter for: Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;
    invoke-static {v4}, Lorg/xbill/DNS/TSIG;->access$200(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v0

    iget-object v4, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    # getter for: Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;
    invoke-static {v4}, Lorg/xbill/DNS/TSIG;->access$300(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 506
    :cond_4
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 507
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BADKEY failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 508
    :cond_5
    iput v9, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 509
    const/16 v0, 0x11

    goto :goto_0

    .line 485
    :cond_6
    iget v0, p1, Lorg/xbill/DNS/Message;->tsigstart:I

    array-length v5, v4

    sub-int/2addr v0, v5

    goto :goto_1

    .line 493
    :cond_7
    iget v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    iget v3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    sub-int/2addr v0, v3

    const/16 v3, 0x64

    if-lt v0, v3, :cond_8

    move v0, v2

    .line 494
    :goto_2
    if-eqz v0, :cond_9

    .line 495
    iput v9, p1, Lorg/xbill/DNS/Message;->tsigState:I

    move v0, v2

    .line 496
    goto :goto_0

    :cond_8
    move v0, v1

    .line 493
    goto :goto_2

    .line 498
    :cond_9
    const/4 v0, 0x2

    iput v0, p1, Lorg/xbill/DNS/Message;->tsigState:I

    move v0, v1

    .line 499
    goto/16 :goto_0

    .line 512
    :cond_a
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 513
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 514
    const/16 v6, 0x20

    shr-long v6, v4, v6

    long-to-int v6, v6

    .line 515
    const-wide v7, 0xffffffffL

    and-long/2addr v4, v7

    .line 516
    invoke-virtual {v0, v6}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 517
    invoke-virtual {v0, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 518
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 519
    iget-object v4, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 521
    iget-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/utils/HMAC;->verify([B)Z

    move-result v0

    if-nez v0, :cond_c

    .line 522
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 523
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BADSIG failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    :cond_b
    iput v9, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 525
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 528
    :cond_c
    iget-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v0}, Lorg/xbill/DNS/utils/HMAC;->clear()V

    .line 529
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 530
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 531
    iget-object v4, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 532
    iget-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 534
    iput v2, p1, Lorg/xbill/DNS/Message;->tsigState:I

    move v0, v1

    .line 535
    goto/16 :goto_0
.end method
