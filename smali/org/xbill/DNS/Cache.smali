.class public Lorg/xbill/DNS/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Cache$CacheMap;,
        Lorg/xbill/DNS/Cache$NegativeElement;,
        Lorg/xbill/DNS/Cache$CacheRRset;,
        Lorg/xbill/DNS/Cache$Element;
    }
.end annotation


# static fields
.field private static final defaultMaxEntries:I = 0xc350


# instance fields
.field private data:Lorg/xbill/DNS/Cache$CacheMap;

.field private dclass:I

.field private maxcache:I

.field private maxncache:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Cache;-><init>(I)V

    .line 182
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    .line 158
    iput v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    .line 171
    iput p1, p0, Lorg/xbill/DNS/Cache;->dclass:I

    .line 172
    new-instance v0, Lorg/xbill/DNS/Cache$CacheMap;

    const v1, 0xc350

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Cache$CacheMap;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    .line 158
    iput v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    .line 189
    new-instance v0, Lorg/xbill/DNS/Cache$CacheMap;

    const v1, 0xc350

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Cache$CacheMap;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 190
    new-instance v0, Lorg/xbill/DNS/Master;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Master;-><init>(Ljava/lang/String;)V

    .line 192
    :goto_0
    invoke-virtual {v0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/xbill/DNS/Cache;->addRecord(Lorg/xbill/DNS/Record;ILjava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method static synthetic access$000(JJ)I
    .locals 1

    .prologue
    .line 20
    invoke-static {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->limitExpire(JJ)I

    move-result v0

    return v0
.end method

.method private declared-synchronized addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    .locals 4

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 260
    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1, p2}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :goto_0
    monitor-exit p0

    return-void

    .line 264
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v3

    .line 265
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 266
    check-cast v0, Ljava/util/List;

    .line 267
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 268
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Cache$Element;

    .line 269
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 270
    invoke-interface {v0, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 267
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 274
    :cond_2
    :try_start_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_3
    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    .line 277
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 278
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1, p2}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 280
    :cond_4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 281
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;
    .locals 2

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 209
    check-cast p1, Ljava/util/List;

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 211
    new-array v0, v0, [Lorg/xbill/DNS/Cache$Element;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Cache$Element;

    check-cast v0, [Lorg/xbill/DNS/Cache$Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :goto_0
    monitor-exit p0

    return-object v0

    .line 213
    :cond_0
    :try_start_1
    check-cast p1, Lorg/xbill/DNS/Cache$Element;

    .line 214
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/xbill/DNS/Cache$Element;

    const/4 v1, 0x0

    aput-object p1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;
    .locals 1

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Cache;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 252
    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 254
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;
    .locals 2

    .prologue
    .line 520
    invoke-virtual {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    invoke-virtual {v0}, Lorg/xbill/DNS/SetResponse;->answers()[Lorg/xbill/DNS/RRset;

    move-result-object v0

    .line 524
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getCred(IZ)I
    .locals 4

    .prologue
    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 555
    if-ne p1, v2, :cond_2

    .line 556
    if-eqz p2, :cond_1

    .line 566
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 559
    goto :goto_0

    .line 560
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 561
    if-nez p2, :cond_0

    move v0, v1

    .line 564
    goto :goto_0

    .line 565
    :cond_3
    if-ne p1, v1, :cond_4

    move v0, v2

    .line 566
    goto :goto_0

    .line 568
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getCred: invalid section"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static limitExpire(JJ)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 30
    cmp-long v0, p2, v4

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    move-wide p0, p2

    .line 32
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    add-long/2addr v0, p0

    .line 33
    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 34
    :cond_1
    const v0, 0x7fffffff

    .line 35
    :goto_0
    return v0

    :cond_2
    long-to-int v0, v0

    goto :goto_0
.end method

.method private static markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V
    .locals 2

    .prologue
    .line 573
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v0

    if-nez v0, :cond_1

    .line 584
    :cond_0
    return-void

    .line 577
    :cond_1
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    .line 578
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 580
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_2

    .line 582
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private declared-synchronized oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 220
    monitor-enter p0

    .line 222
    const/16 v0, 0xff

    if-ne p3, v0, :cond_0

    .line 223
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "oneElement(ANY)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 224
    :cond_0
    :try_start_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 225
    check-cast p2, Ljava/util/List;

    .line 226
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 227
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    .line 228
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->getType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v3, p3, :cond_2

    .line 238
    :goto_1
    if-nez v0, :cond_4

    .line 246
    :cond_1
    :goto_2
    monitor-exit p0

    return-object v1

    .line 226
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 234
    :cond_3
    :try_start_2
    check-cast p2, Lorg/xbill/DNS/Cache$Element;

    .line 235
    invoke-interface {p2}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v0

    if-ne v0, p3, :cond_6

    move-object v0, p2

    .line 236
    goto :goto_1

    .line 240
    :cond_4
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->expired()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 241
    invoke-direct {p0, p1, p3}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    goto :goto_2

    .line 244
    :cond_5
    invoke-interface {v0, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-ltz v2, :cond_1

    move-object v1, v0

    .line 246
    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method private declared-synchronized removeElement(Lorg/xbill/DNS/Name;I)V
    .locals 3

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 291
    if-nez v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 294
    :cond_1
    :try_start_1
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 295
    check-cast v0, Ljava/util/List;

    .line 296
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 297
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Cache$Element;

    .line 298
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v1

    if-ne v1, p2, :cond_2

    .line 299
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 300
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 296
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 306
    :cond_3
    :try_start_2
    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    .line 307
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 309
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized removeName(Lorg/xbill/DNS/Name;)V
    .locals 1

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addMessage(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/SetResponse;
    .locals 18

    .prologue
    .line 596
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v8

    .line 597
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 603
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v9

    .line 604
    const/4 v3, 0x0

    .line 606
    const/4 v2, 0x0

    .line 607
    const-string v4, "verbosecache"

    invoke-static {v4}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v10

    .line 610
    if-eqz v9, :cond_0

    const/4 v4, 0x3

    if-ne v9, v4, :cond_1

    :cond_0
    if-nez v1, :cond_3

    .line 612
    :cond_1
    const/4 v2, 0x0

    .line 724
    :cond_2
    :goto_0
    return-object v2

    .line 614
    :cond_3
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v6

    .line 615
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v7

    .line 616
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v11

    .line 620
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 622
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v13

    .line 623
    const/4 v1, 0x0

    move v5, v1

    move-object v4, v6

    move-object v1, v2

    :goto_1
    array-length v2, v13

    if-ge v5, v2, :cond_1a

    .line 624
    aget-object v2, v13, v5

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v2

    if-eq v2, v11, :cond_4

    move v2, v3

    move-object v3, v4

    .line 623
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v3

    move v3, v2

    goto :goto_1

    .line 626
    :cond_4
    aget-object v2, v13, v5

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    .line 627
    aget-object v14, v13, v5

    invoke-virtual {v14}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v14

    .line 628
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v15

    .line 629
    if-eq v2, v7, :cond_5

    const/16 v16, 0xff

    move/from16 v0, v16

    if-ne v7, v0, :cond_8

    :cond_5
    invoke-virtual {v14, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 632
    aget-object v2, v13, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 633
    const/4 v2, 0x1

    .line 634
    if-ne v4, v6, :cond_7

    .line 635
    if-nez v1, :cond_6

    .line 636
    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 638
    :cond_6
    aget-object v3, v13, v5

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    .line 640
    :cond_7
    aget-object v3, v13, v5

    invoke-static {v3, v12}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    move-object v3, v4

    goto :goto_2

    .line 641
    :cond_8
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v2, v0, :cond_9

    invoke-virtual {v14, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 643
    aget-object v2, v13, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 644
    if-ne v4, v6, :cond_19

    .line 645
    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v2, 0x4

    aget-object v4, v13, v5

    invoke-direct {v1, v2, v4}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object v2, v1

    .line 647
    :goto_3
    aget-object v1, v13, v5

    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/CNAMERecord;

    .line 648
    invoke-virtual {v1}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v1

    move-object/from16 v17, v2

    move v2, v3

    move-object v3, v1

    move-object/from16 v1, v17

    .line 649
    goto :goto_2

    :cond_9
    const/16 v16, 0x27

    move/from16 v0, v16

    if-ne v2, v0, :cond_18

    invoke-virtual {v4, v14}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 651
    aget-object v2, v13, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 652
    if-ne v4, v6, :cond_17

    .line 653
    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v2, 0x5

    aget-object v14, v13, v5

    invoke-direct {v1, v2, v14}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object v2, v1

    .line 655
    :goto_4
    aget-object v1, v13, v5

    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/DNAMERecord;

    .line 657
    :try_start_0
    invoke-virtual {v4, v1}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object/from16 v17, v2

    move v2, v3

    move-object v3, v1

    move-object/from16 v1, v17

    .line 661
    goto/16 :goto_2

    .line 659
    :catch_0
    move-exception v1

    .line 665
    :goto_5
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v11

    .line 666
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 667
    const/4 v1, 0x0

    move/from16 v17, v1

    move-object v1, v5

    move-object v5, v6

    move/from16 v6, v17

    :goto_6
    array-length v13, v11

    if-ge v6, v13, :cond_c

    .line 668
    aget-object v13, v11, v6

    invoke-virtual {v13}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v13

    const/4 v14, 0x6

    if-ne v13, v14, :cond_b

    aget-object v13, v11, v6

    invoke-virtual {v13}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 670
    aget-object v5, v11, v6

    .line 667
    :cond_a
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 671
    :cond_b
    aget-object v13, v11, v6

    invoke-virtual {v13}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_a

    aget-object v13, v11, v6

    invoke-virtual {v13}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 673
    aget-object v1, v11, v6

    goto :goto_7

    .line 675
    :cond_c
    if-nez v3, :cond_14

    .line 677
    const/4 v3, 0x3

    if-ne v9, v3, :cond_11

    const/4 v3, 0x0

    .line 678
    :goto_8
    const/4 v6, 0x3

    if-eq v9, v6, :cond_d

    if-nez v5, :cond_d

    if-nez v1, :cond_13

    .line 680
    :cond_d
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v6

    .line 681
    const/4 v1, 0x0

    .line 682
    if-eqz v5, :cond_e

    .line 683
    invoke-virtual {v5}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/SOARecord;

    .line 684
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v1, v6}, Lorg/xbill/DNS/Cache;->addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;I)V

    .line 685
    if-nez v2, :cond_f

    .line 687
    const/4 v1, 0x3

    if-ne v9, v1, :cond_12

    .line 688
    const/4 v1, 0x1

    .line 691
    :goto_9
    invoke-static {v1}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v2

    .line 711
    :cond_f
    :goto_a
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 712
    const/4 v1, 0x0

    :goto_b
    array-length v4, v3

    if-ge v1, v4, :cond_16

    .line 713
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v4

    .line 714
    const/4 v5, 0x1

    if-eq v4, v5, :cond_15

    const/16 v5, 0x1c

    if-eq v4, v5, :cond_15

    const/16 v5, 0x26

    if-eq v4, v5, :cond_15

    .line 712
    :cond_10
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_11
    move v3, v7

    .line 677
    goto :goto_8

    .line 690
    :cond_12
    const/4 v1, 0x2

    goto :goto_9

    .line 696
    :cond_13
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v3

    .line 697
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 698
    invoke-static {v1, v12}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    .line 699
    if-nez v2, :cond_f

    .line 700
    new-instance v2, Lorg/xbill/DNS/SetResponse;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    goto :goto_a

    .line 704
    :cond_14
    if-nez v9, :cond_f

    if-eqz v1, :cond_f

    .line 706
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v3

    .line 707
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 708
    invoke-static {v1, v12}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    goto :goto_a

    .line 716
    :cond_15
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 717
    invoke-virtual {v12, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 719
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v4

    .line 720
    aget-object v5, v3, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    goto :goto_c

    .line 722
    :cond_16
    if-eqz v10, :cond_2

    .line 723
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    move-object v2, v1

    goto/16 :goto_4

    :cond_18
    move v2, v3

    move-object v3, v4

    goto/16 :goto_2

    :cond_19
    move-object v2, v1

    goto/16 :goto_3

    :cond_1a
    move-object v2, v1

    goto/16 :goto_5
.end method

.method public declared-synchronized addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;I)V
    .locals 7

    .prologue
    const-wide/16 v3, 0x0

    .line 383
    monitor-enter p0

    .line 384
    if-eqz p3, :cond_3

    .line 385
    :try_start_0
    invoke-virtual {p3}, Lorg/xbill/DNS/SOARecord;->getTTL()J

    move-result-wide v0

    move-wide v1, v0

    .line 386
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    .line 387
    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 388
    if-eqz v0, :cond_0

    invoke-interface {v0, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 389
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 391
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v1

    if-gtz v1, :cond_2

    .line 392
    const/4 v0, 0x0

    .line 393
    :cond_2
    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lorg/xbill/DNS/Cache$NegativeElement;

    iget v1, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    int-to-long v5, v1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/Cache$NegativeElement;-><init>(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;IJ)V

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Cache;->addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-wide v1, v3

    goto :goto_0
.end method

.method public declared-synchronized addRRset(Lorg/xbill/DNS/RRset;I)V
    .locals 7

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v1

    .line 353
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 354
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v4

    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, v3, v4, v0}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    .line 356
    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    .line 357
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 358
    invoke-direct {p0, v3, v4}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 360
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v1

    if-gtz v1, :cond_2

    .line 361
    const/4 v0, 0x0

    .line 362
    :cond_2
    if-nez v0, :cond_0

    .line 364
    instance-of v0, p1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v0, :cond_3

    .line 365
    check-cast p1, Lorg/xbill/DNS/Cache$CacheRRset;

    .line 368
    :goto_1
    invoke-direct {p0, v3, p1}, Lorg/xbill/DNS/Cache;->addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 367
    :cond_3
    :try_start_2
    new-instance v0, Lorg/xbill/DNS/Cache$CacheRRset;

    iget v1, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    int-to-long v1, v1

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/xbill/DNS/Cache$CacheRRset;-><init>(Lorg/xbill/DNS/RRset;IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v0

    goto :goto_1
.end method

.method public declared-synchronized addRecord(Lorg/xbill/DNS/Record;ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 329
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    .line 330
    invoke-static {v1}, Lorg/xbill/DNS/Type;->isRR(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 342
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 332
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, v1, p2}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    .line 333
    if-nez v0, :cond_2

    .line 334
    new-instance v0, Lorg/xbill/DNS/Cache$CacheRRset;

    iget v1, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    int-to-long v1, v1

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/xbill/DNS/Cache$CacheRRset;-><init>(Lorg/xbill/DNS/Record;IJ)V

    .line 335
    invoke-virtual {p0, v0, p2}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 336
    :cond_2
    :try_start_2
    invoke-interface {v0, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 337
    instance-of v1, v0, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v1, :cond_0

    .line 338
    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    .line 339
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheRRset;->addRR(Lorg/xbill/DNS/Record;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized clearCache()V
    .locals 1

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findAnyRecords(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method public findRecords(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method public flushName(Lorg/xbill/DNS/Name;)V
    .locals 0

    .prologue
    .line 745
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Cache;->removeName(Lorg/xbill/DNS/Name;)V

    .line 746
    return-void
.end method

.method public flushSet(Lorg/xbill/DNS/Name;I)V
    .locals 0

    .prologue
    .line 735
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    .line 736
    return-void
.end method

.method public getDClass()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Lorg/xbill/DNS/Cache;->dclass:I

    return v0
.end method

.method public getMaxCache()I
    .locals 1

    .prologue
    .line 782
    iget v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    return v0
.end method

.method public getMaxEntries()I
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->getMaxSize()I

    move-result v0

    return v0
.end method

.method public getMaxNCache()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->size()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized lookup(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;
    .locals 11

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v7

    move v6, v7

    .line 414
    :goto_0
    const/4 v0, 0x1

    if-lt v6, v0, :cond_10

    .line 415
    const/4 v0, 0x1

    if-ne v6, v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 416
    :goto_1
    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    move v5, v0

    .line 418
    :goto_2
    if-eqz v1, :cond_3

    .line 419
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    move-object v4, v0

    .line 425
    :goto_3
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 426
    if-nez v8, :cond_5

    .line 414
    :cond_0
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    .line 415
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 416
    :cond_2
    const/4 v0, 0x0

    move v5, v0

    goto :goto_2

    .line 420
    :cond_3
    if-eqz v5, :cond_4

    move-object v4, p1

    .line 421
    goto :goto_3

    .line 423
    :cond_4
    new-instance v0, Lorg/xbill/DNS/Name;

    sub-int v1, v7, v6

    invoke-direct {v0, p1, v1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    move-object v4, v0

    goto :goto_3

    .line 430
    :cond_5
    if-eqz v5, :cond_a

    const/16 v0, 0xff

    if-ne p2, v0, :cond_a

    .line 431
    new-instance v2, Lorg/xbill/DNS/SetResponse;

    const/4 v0, 0x6

    invoke-direct {v2, v0}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 432
    invoke-direct {p0, v8}, Lorg/xbill/DNS/Cache;->allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;

    move-result-object v9

    .line 433
    const/4 v1, 0x0

    .line 434
    const/4 v0, 0x0

    move v3, v0

    :goto_4
    array-length v0, v9

    if-ge v3, v0, :cond_9

    .line 435
    aget-object v0, v9, v3

    .line 436
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->expired()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 437
    invoke-interface {v0}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v0

    invoke-direct {p0, v4, v0}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    move v0, v1

    .line 434
    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_4

    .line 440
    :cond_6
    instance-of v10, v0, Lorg/xbill/DNS/Cache$CacheRRset;

    if-nez v10, :cond_7

    move v0, v1

    .line 441
    goto :goto_5

    .line 442
    :cond_7
    invoke-interface {v0, p3}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v10

    if-gez v10, :cond_8

    move v0, v1

    .line 443
    goto :goto_5

    .line 444
    :cond_8
    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-virtual {v2, v0}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    .line 448
    :cond_9
    if-lez v1, :cond_a

    move-object v0, v2

    .line 500
    :goto_6
    monitor-exit p0

    return-object v0

    .line 456
    :cond_a
    if-eqz v5, :cond_d

    .line 457
    :try_start_1
    invoke-direct {p0, v4, v8, p2, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_b

    instance-of v1, v0, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v1, :cond_b

    .line 461
    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 462
    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    move-object v0, v1

    .line 463
    goto :goto_6

    .line 464
    :cond_b
    if-eqz v0, :cond_c

    .line 465
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 469
    :cond_c
    const/4 v0, 0x5

    :try_start_2
    invoke-direct {p0, v4, v8, v0, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_e

    instance-of v1, v0, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v1, :cond_e

    .line 473
    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v2, 0x4

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object v0, v1

    goto :goto_6

    .line 477
    :cond_d
    const/16 v0, 0x27

    invoke-direct {p0, v4, v8, v0, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_e

    instance-of v1, v0, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v1, :cond_e

    .line 481
    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v2, 0x5

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object v0, v1

    goto :goto_6

    .line 487
    :cond_e
    const/4 v0, 0x2

    invoke-direct {p0, v4, v8, v0, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_f

    instance-of v1, v0, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v1, :cond_f

    .line 489
    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v2, 0x3

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    move-object v0, v1

    goto :goto_6

    .line 493
    :cond_f
    if-eqz v5, :cond_0

    .line 494
    const/4 v0, 0x0

    invoke-direct {p0, v4, v8, v0, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    .line 495
    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    goto :goto_6

    .line 500
    :cond_10
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_6
.end method

.method public lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->lookup(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    return-object v0
.end method

.method public setMaxCache(I)V
    .locals 0

    .prologue
    .line 773
    iput p1, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    .line 774
    return-void
.end method

.method public setMaxEntries(I)V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->setMaxSize(I)V

    .line 819
    return-void
.end method

.method public setMaxNCache(I)V
    .locals 0

    .prologue
    .line 755
    iput p1, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    .line 756
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 834
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 835
    monitor-enter p0

    .line 836
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 837
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Cache;->allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;

    move-result-object v3

    .line 839
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 840
    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 841
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 844
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 844
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
