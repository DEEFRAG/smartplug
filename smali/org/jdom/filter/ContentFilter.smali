.class public Lorg/jdom/filter/ContentFilter;
.super Lorg/jdom/filter/AbstractFilter;
.source "ContentFilter.java"


# static fields
.field public static final CDATA:I = 0x2

.field public static final COMMENT:I = 0x8

.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: ContentFilter.java,v $ $Revision: 1.15 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $"

.field public static final DOCTYPE:I = 0x80

.field public static final DOCUMENT:I = 0x40

.field public static final ELEMENT:I = 0x1

.field public static final ENTITYREF:I = 0x20

.field public static final PI:I = 0x10

.field public static final TEXT:I = 0x4


# instance fields
.field private filterMask:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    .line 121
    invoke-virtual {p0}, Lorg/jdom/filter/ContentFilter;->setDefaultMask()V

    .line 122
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "mask"    # I

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    .line 145
    invoke-virtual {p0, p1}, Lorg/jdom/filter/ContentFilter;->setFilterMask(I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "allVisible"    # Z

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/jdom/filter/ContentFilter;->setDefaultMask()V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    iget v1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 342
    if-ne p0, p1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v1

    .line 343
    :cond_1
    instance-of v3, p1, Lorg/jdom/filter/ContentFilter;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 345
    check-cast v0, Lorg/jdom/filter/ContentFilter;

    .line 347
    .local v0, "filter":Lorg/jdom/filter/ContentFilter;
    iget v3, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    iget v4, v0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getFilterMask()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 305
    instance-of v2, p1, Lorg/jdom/Element;

    if-eqz v2, :cond_2

    .line 306
    iget v2, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 306
    goto :goto_0

    .line 308
    :cond_2
    instance-of v2, p1, Lorg/jdom/CDATA;

    if-eqz v2, :cond_3

    .line 309
    iget v2, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 311
    :cond_3
    instance-of v2, p1, Lorg/jdom/Text;

    if-eqz v2, :cond_4

    .line 312
    iget v2, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 314
    :cond_4
    instance-of v2, p1, Lorg/jdom/Comment;

    if-eqz v2, :cond_5

    .line 315
    iget v2, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 317
    :cond_5
    instance-of v2, p1, Lorg/jdom/ProcessingInstruction;

    if-eqz v2, :cond_6

    .line 318
    iget v2, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 320
    :cond_6
    instance-of v2, p1, Lorg/jdom/EntityRef;

    if-eqz v2, :cond_7

    .line 321
    iget v2, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 323
    :cond_7
    instance-of v2, p1, Lorg/jdom/Document;

    if-eqz v2, :cond_8

    .line 324
    iget v2, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 326
    :cond_8
    instance-of v2, p1, Lorg/jdom/DocType;

    if-eqz v2, :cond_9

    .line 327
    iget v2, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_9
    move v0, v1

    .line 330
    goto :goto_0
.end method

.method public setCDATAVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    goto :goto_0
.end method

.method public setCommentVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 244
    if-eqz p1, :cond_0

    .line 245
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    goto :goto_0
.end method

.method public setDefaultMask()V
    .locals 1

    .prologue
    .line 171
    const/16 v0, 0xff

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    .line 173
    return-void
.end method

.method public setDocTypeVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 289
    if-eqz p1, :cond_0

    .line 290
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    goto :goto_0
.end method

.method public setDocumentContent()V
    .locals 1

    .prologue
    .line 180
    const/16 v0, 0x99

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    .line 181
    return-void
.end method

.method public setElementContent()V
    .locals 1

    .prologue
    .line 188
    const/16 v0, 0x3f

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    .line 190
    return-void
.end method

.method public setElementVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    goto :goto_0
.end method

.method public setEntityRefVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 274
    if-eqz p1, :cond_0

    .line 275
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    goto :goto_0
.end method

.method public setFilterMask(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/jdom/filter/ContentFilter;->setDefaultMask()V

    .line 164
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/2addr v0, p1

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    .line 165
    return-void
.end method

.method public setPIVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    goto :goto_0
.end method

.method public setTextVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    goto :goto_0
.end method
