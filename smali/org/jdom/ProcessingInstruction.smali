.class public Lorg/jdom/ProcessingInstruction;
.super Lorg/jdom/Content;
.source "ProcessingInstruction.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: ProcessingInstruction.java,v $ $Revision: 1.47 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"


# instance fields
.field protected mapData:Ljava/util/Map;

.field protected rawData:Ljava/lang/String;

.field protected target:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    .line 118
    invoke-virtual {p0, p1}, Lorg/jdom/ProcessingInstruction;->setTarget(Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    .line 119
    invoke-virtual {p0, p2}, Lorg/jdom/ProcessingInstruction;->setData(Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/util/Map;

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    .line 104
    invoke-virtual {p0, p1}, Lorg/jdom/ProcessingInstruction;->setTarget(Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    .line 105
    invoke-virtual {p0, p2}, Lorg/jdom/ProcessingInstruction;->setData(Ljava/util/Map;)Lorg/jdom/ProcessingInstruction;

    .line 106
    return-void
.end method

.method private static extractQuotedString(Ljava/lang/String;)[I
    .locals 7
    .param p0, "rawData"    # Ljava/lang/String;

    .prologue
    .line 404
    const/4 v1, 0x0

    .line 407
    .local v1, "inQuotes":Z
    const/16 v3, 0x22

    .line 411
    .local v3, "quoteChar":C
    const/4 v4, 0x0

    .line 415
    .local v4, "start":I
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 416
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 417
    .local v0, "currentChar":C
    const/16 v5, 0x22

    if-eq v0, v5, :cond_0

    const/16 v5, 0x27

    if-ne v0, v5, :cond_1

    .line 418
    :cond_0
    if-nez v1, :cond_2

    .line 420
    move v3, v0

    .line 421
    const/4 v1, 0x1

    .line 422
    add-int/lit8 v4, v2, 0x1

    .line 415
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    :cond_2
    if-ne v3, v0, :cond_1

    .line 426
    const/4 v1, 0x0

    .line 427
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v6, 0x1

    aput v2, v5, v6

    .line 434
    .end local v0    # "currentChar":C
    :goto_1
    return-object v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private parseData(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p1, "rawData"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 323
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 328
    .local v2, "data":Ljava/util/Map;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "inputData":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 335
    const-string v4, ""

    .line 336
    .local v4, "name":Ljava/lang/String;
    const-string v8, ""

    .line 337
    .local v8, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 338
    .local v7, "startName":I
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 339
    .local v6, "previousChar":C
    const/4 v5, 0x1

    .line 340
    .local v5, "pos":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 341
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 342
    .local v1, "currentChar":C
    const/16 v9, 0x3d

    if-ne v1, v9, :cond_4

    .line 343
    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 346
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/jdom/ProcessingInstruction;->extractQuotedString(Ljava/lang/String;)[I

    move-result-object v0

    .line 349
    .local v0, "bounds":[I
    if-nez v0, :cond_2

    .line 350
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "data":Ljava/util/Map;
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 384
    .end local v0    # "bounds":[I
    .end local v1    # "currentChar":C
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "pos":I
    .end local v6    # "previousChar":C
    .end local v7    # "startName":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 352
    .restart local v0    # "bounds":[I
    .restart local v1    # "currentChar":C
    .restart local v2    # "data":Ljava/util/Map;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "pos":I
    .restart local v6    # "previousChar":C
    .restart local v7    # "startName":I
    .restart local v8    # "value":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    aget v9, v0, v9

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, 0x1

    aget v10, v0, v11

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 354
    aget v9, v0, v11

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v5, v9

    .line 366
    .end local v0    # "bounds":[I
    .end local v1    # "currentChar":C
    :cond_3
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    if-eqz v8, :cond_0

    .line 379
    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 357
    .restart local v1    # "currentChar":C
    :cond_4
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_5

    .line 359
    move v7, v5

    .line 362
    :cond_5
    move v6, v1

    .line 340
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p1, "mapData"    # Ljava/util/Map;

    .prologue
    .line 288
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 290
    .local v2, "rawData":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 291
    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 293
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 294
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 300
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 301
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 304
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 462
    invoke-super {p0}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/ProcessingInstruction;

    .line 468
    .local v0, "pi":Lorg/jdom/ProcessingInstruction;
    iget-object v1, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lorg/jdom/ProcessingInstruction;->rawData:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/jdom/ProcessingInstruction;->parseData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    .line 471
    :cond_0
    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/jdom/ProcessingInstruction;->rawData:Ljava/lang/String;

    return-object v0
.end method

.method public getPseudoAttributeNames()Ljava/util/List;
    .locals 7

    .prologue
    .line 176
    iget-object v5, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 177
    .local v2, "mapDataSet":Ljava/util/Set;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v3, "nameList":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "wholeSet":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "attrName":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v4    # "wholeSet":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public getPseudoAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/jdom/ProcessingInstruction;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/jdom/ProcessingInstruction;->rawData:Ljava/lang/String;

    return-object v0
.end method

.method public removePseudoAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-direct {p0, v0}, Lorg/jdom/ProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/ProcessingInstruction;->rawData:Ljava/lang/String;

    .line 275
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {p1}, Lorg/jdom/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 195
    new-instance v1, Lorg/jdom/IllegalDataException;

    invoke-direct {v1, p1, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_0
    iput-object p1, p0, Lorg/jdom/ProcessingInstruction;->rawData:Ljava/lang/String;

    .line 199
    invoke-direct {p0, p1}, Lorg/jdom/ProcessingInstruction;->parseData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    .line 200
    return-object p0
.end method

.method public setData(Ljava/util/Map;)Lorg/jdom/ProcessingInstruction;
    .locals 3
    .param p1, "data"    # Ljava/util/Map;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lorg/jdom/ProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "temp":Ljava/lang/String;
    invoke-static {v1}, Lorg/jdom/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 217
    new-instance v2, Lorg/jdom/IllegalDataException;

    invoke-direct {v2, v1, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_0
    iput-object v1, p0, Lorg/jdom/ProcessingInstruction;->rawData:Ljava/lang/String;

    .line 221
    iput-object p1, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    .line 222
    return-object p0
.end method

.method public setPseudoAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {p1}, Lorg/jdom/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 251
    new-instance v1, Lorg/jdom/IllegalDataException;

    invoke-direct {v1, p1, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_0
    invoke-static {p2}, Lorg/jdom/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_1

    .line 256
    new-instance v1, Lorg/jdom/IllegalDataException;

    invoke-direct {v1, p2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_1
    iget-object v1, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v1, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-direct {p0, v1}, Lorg/jdom/ProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom/ProcessingInstruction;->rawData:Ljava/lang/String;

    .line 261
    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;
    .locals 2
    .param p1, "newTarget"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p1}, Lorg/jdom/Verifier;->checkProcessingInstructionTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 132
    new-instance v1, Lorg/jdom/IllegalTargetException;

    invoke-direct {v1, p1, v0}, Lorg/jdom/IllegalTargetException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_0
    iput-object p1, p0, Lorg/jdom/ProcessingInstruction;->target:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[ProcessingInstruction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Lorg/jdom/output/XMLOutputter;

    invoke-direct {v1}, Lorg/jdom/output/XMLOutputter;-><init>()V

    invoke-virtual {v1, p0}, Lorg/jdom/output/XMLOutputter;->outputString(Lorg/jdom/ProcessingInstruction;)Ljava/lang/String;

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
