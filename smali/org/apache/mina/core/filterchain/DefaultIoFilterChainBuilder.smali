.class public Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
.super Ljava/lang/Object;
.source "DefaultIoFilterChainBuilder.java"

# interfaces
.implements Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;,
        Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;)V
    .locals 2
    .param p1, "filterChain"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filterChain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    .line 83
    return-void
.end method

.method private checkBaseName(Ljava/lang/String;)V
    .locals 3
    .param p1, "baseName"    # Ljava/lang/String;

    .prologue
    .line 487
    if-nez p1, :cond_0

    .line 488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 492
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown filter name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_1
    return-void
.end method

.method private isOrderedMap(Ljava/util/Map;)Z
    .locals 20
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 364
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 365
    .local v13, "mapType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v17, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 366
    sget-object v17, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 367
    sget-object v17, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is an ordered map."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 369
    :cond_0
    const/16 v17, 0x1

    .line 447
    :goto_0
    return v17

    .line 372
    :cond_1
    sget-object v17, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 373
    sget-object v17, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is not a "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-class v19, Ljava/util/LinkedHashMap;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 377
    :cond_2
    move-object/from16 v16, v13

    .line 378
    .local v16, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v16, :cond_6

    .line 379
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/Class;
    array-length v12, v2

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v12, :cond_5

    aget-object v8, v2, v9

    .line 380
    .local v8, "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "OrderedMap"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 381
    sget-object v17, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 382
    sget-object v17, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is an ordered map (guessed from that it "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " implements OrderedMap interface.)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 387
    :cond_3
    const/16 v17, 0x1

    goto :goto_0

    .line 379
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 390
    .end local v8    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v16

    goto :goto_1

    .line 393
    .end local v2    # "arr$":[Ljava/lang/Class;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    :cond_6
    sget-object v17, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 394
    sget-object v17, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " doesn\'t implement OrderedMap interface."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 401
    :cond_7
    sget-object v17, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    const-string v18, "Last resort; trying to create a new map instance with a default constructor and test if insertion order is maintained."

    invoke-interface/range {v17 .. v18}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 408
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .local v14, "newMap":Ljava/util/Map;
    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    .line 419
    .local v15, "rand":Ljava/util/Random;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v5, "expectedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lorg/apache/mina/core/filterchain/IoFilterAdapter;

    invoke-direct {v3}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 421
    .local v3, "dummyFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    const/high16 v17, 0x10000

    move/from16 v0, v17

    if-ge v7, v0, :cond_d

    .line 424
    :cond_8
    invoke-virtual {v15}, Ljava/util/Random;->nextInt()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 425
    .local v6, "filterName":Ljava/lang/String;
    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 427
    invoke-interface {v14, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 431
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 432
    .local v11, "key":Ljava/lang/Object;
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 433
    sget-object v17, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 434
    sget-object v17, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The specified map didn\'t pass the insertion order test after "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v7, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " tries."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 438
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 409
    .end local v3    # "dummyFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local v5    # "expectedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "filterName":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "key":Ljava/lang/Object;
    .end local v14    # "newMap":Ljava/util/Map;
    .end local v15    # "rand":Ljava/util/Random;
    :catch_0
    move-exception v4

    .line 410
    .local v4, "e":Ljava/lang/Exception;
    sget-object v17, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 411
    sget-object v17, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to create a new map instance of \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 421
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "dummyFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    .restart local v5    # "expectedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "filterName":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v14    # "newMap":Ljava/util/Map;
    .restart local v15    # "rand":Ljava/util/Random;
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 443
    .end local v6    # "filterName":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d
    sget-object v17, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 444
    sget-object v17, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    const-string v18, "The specified map passed the insertion order test."

    invoke-interface/range {v17 .. v18}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 447
    :cond_e
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method private register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "e"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .prologue
    .line 498
    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other filter is using the same name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 504
    return-void
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 5
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->checkBaseName(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 224
    .local v0, "base":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    new-instance v3, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, p3, v4}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, v2, v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v0    # "base":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_1
    monitor-exit p0

    return-void

    .line 220
    .end local v1    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 5
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->checkBaseName(Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 208
    .local v0, "base":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v2

    new-instance v3, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, p3, v4}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, v2, v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .end local v0    # "base":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_1
    monitor-exit p0

    return-void

    .line 204
    .end local v1    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 189
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V
    .locals 4
    .param p1, "chain"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 451
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 452
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/apache/mina/core/filterchain/IoFilterChain;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    goto :goto_0

    .line 454
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z
    .locals 1
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    .line 141
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    if-nez v0, :cond_0

    .line 142
    const/4 v1, 0x0

    .line 145
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    .line 129
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    if-nez v0, :cond_0

    .line 130
    const/4 v1, 0x0

    .line 133
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    goto :goto_0
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllReversed()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getAll()Ljava/util/List;

    move-result-object v0

    .line 160
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 161
    return-object v0
.end method

.method public getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 116
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 90
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 3
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 102
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 103
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 108
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized remove(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 274
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filterType"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 277
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 279
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 281
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 285
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filter not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 235
    monitor-enter p0

    if-nez p1, :cond_0

    .line 236
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 239
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 241
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 243
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 247
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown filter name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized remove(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 5
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 254
    monitor-enter p0

    if-nez p1, :cond_0

    .line 255
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 258
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 260
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 261
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 262
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 266
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filter not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized replace(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->checkBaseName(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    .line 291
    .local v0, "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 292
    .local v1, "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    # invokes: Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->setFilter(Lorg/apache/mina/core/filterchain/IoFilter;)V
    invoke-static {v0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->access$100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-object v1

    .line 289
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;
    .end local v1    # "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized replace(Ljava/lang/Class;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 5
    .param p2, "newFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "oldFilterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 310
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    # invokes: Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->setFilter(Lorg/apache/mina/core/filterchain/IoFilter;)V
    invoke-static {v0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->access$100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit p0

    return-void

    .line 315
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filter not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized replace(Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 5
    .param p1, "oldFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;
    .param p2, "newFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 298
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 299
    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    # invokes: Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->setFilter(Lorg/apache/mina/core/filterchain/IoFilter;)V
    invoke-static {v0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->access$100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 303
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filter not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setFilters(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    if-nez p1, :cond_0

    .line 335
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "filters"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 338
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->isOrderedMap(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 339
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filters is not an ordered map. Please try "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 344
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 345
    .end local p1    # "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    .local v1, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 346
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 347
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "filters contains a null key."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 349
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 350
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "filters contains a null value."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 354
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    :cond_4
    monitor-enter p0

    .line 355
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->clear()V

    .line 356
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 357
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/core/filterchain/IoFilter;

    invoke-virtual {p0, v3, v4}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    goto :goto_0

    .line 359
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v4, "{ "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const/4 v2, 0x1

    .line 463
    .local v2, "empty":Z
    iget-object v4, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 464
    .local v1, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    if-nez v2, :cond_0

    .line 465
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :goto_1
    const/16 v4, 0x28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 474
    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 467
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 477
    .end local v1    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_1
    if-eqz v2, :cond_2

    .line 478
    const-string v4, "empty"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :cond_2
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
