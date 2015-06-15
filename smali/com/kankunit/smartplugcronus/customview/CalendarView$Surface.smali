.class Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;
.super Ljava/lang/Object;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/customview/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Surface"
.end annotation


# instance fields
.field public bgColor:I

.field private borderColor:I

.field public borderPaint:Landroid/graphics/Paint;

.field public borderWidth:F

.field public boxPath:Landroid/graphics/Path;

.field private btnColor:I

.field public cellBgPaint:Landroid/graphics/Paint;

.field public cellDownColor:I

.field public cellHeight:F

.field public cellSelectedColor:I

.field public cellWidth:F

.field public datePaint:Landroid/graphics/Paint;

.field public density:F

.field public height:I

.field public monthChangeBtnPaint:Landroid/graphics/Paint;

.field public monthHeight:F

.field public monthPaint:Landroid/graphics/Paint;

.field public monthText:[Ljava/lang/String;

.field private textColor:I

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/customview/CalendarView;

.field public todayNumberColor:I

.field public weekHeight:F

.field public weekPaint:Landroid/graphics/Paint;

.field public weekText:[Ljava/lang/String;

.field public width:I


# direct methods
.method private constructor <init>(Lcom/kankunit/smartplugcronus/customview/CalendarView;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 416
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->this$0:Lcom/kankunit/smartplugcronus/customview/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->bgColor:I

    .line 427
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->textColor:I

    .line 429
    const-string v0, "#666666"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->btnColor:I

    .line 430
    const-string v0, "#CCCCCC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderColor:I

    .line 431
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->todayNumberColor:I

    .line 432
    const-string v0, "#CCFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellDownColor:I

    .line 433
    const-string v0, "#99CCFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellSelectedColor:I

    .line 443
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Sun"

    aput-object v1, v0, v3

    const-string v1, "Mon"

    aput-object v1, v0, v4

    const-string v1, "Tue"

    aput-object v1, v0, v5

    const-string v1, "Wed"

    aput-object v1, v0, v6

    const-string v1, "Thu"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sat"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekText:[Ljava/lang/String;

    .line 444
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Jan"

    aput-object v1, v0, v3

    const-string v1, "Feb"

    aput-object v1, v0, v4

    const-string v1, "Mar"

    aput-object v1, v0, v5

    const-string v1, "Apr"

    aput-object v1, v0, v6

    const-string v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthText:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/customview/CalendarView;Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;)V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;-><init>(Lcom/kankunit/smartplugcronus/customview/CalendarView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;)I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->textColor:I

    return v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;)I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderColor:I

    return v0
.end method


# virtual methods
.method public init()V
    .locals 14

    .prologue
    const/high16 v13, 0x40e00000    # 7.0f

    const/high16 v12, 0x40c00000    # 6.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 447
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->height:I

    int-to-float v6, v6

    div-float v2, v6, v13

    .line 448
    .local v2, "temp":F
    iput v10, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthHeight:F

    .line 450
    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v2

    add-float/2addr v6, v2

    float-to-double v6, v6

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekHeight:F

    .line 451
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->height:I

    int-to-float v6, v6

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthHeight:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekHeight:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v12

    iput v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellHeight:F

    .line 452
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v13

    iput v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellWidth:F

    .line 453
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderPaint:Landroid/graphics/Paint;

    .line 454
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 456
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    iget v8, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->density:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderWidth:F

    .line 458
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderWidth:F

    cmpg-float v6, v6, v5

    if-gez v6, :cond_0

    :goto_0
    iput v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderWidth:F

    .line 459
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderWidth:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 460
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthPaint:Landroid/graphics/Paint;

    .line 461
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->textColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 462
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 463
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellHeight:F

    const v6, 0x3ecccccd    # 0.4f

    mul-float v3, v5, v6

    .line 464
    .local v3, "textSize":F
    const-string v5, "anCalendar"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "text size:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 466
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 467
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekPaint:Landroid/graphics/Paint;

    .line 468
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->textColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 470
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekHeight:F

    const v6, 0x3f19999a    # 0.6f

    mul-float v4, v5, v6

    .line 471
    .local v4, "weekTextSize":F
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 472
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 473
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->datePaint:Landroid/graphics/Paint;

    .line 474
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->datePaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->textColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->datePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 476
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellHeight:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v0, v5, v6

    .line 477
    .local v0, "cellTextSize":F
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->datePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 478
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->datePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 479
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->boxPath:Landroid/graphics/Path;

    .line 482
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->boxPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->width:I

    int-to-float v6, v6

    invoke-virtual {v5, v6, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 483
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->boxPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthHeight:F

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekHeight:F

    add-float/2addr v6, v7

    invoke-virtual {v5, v10, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 484
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->boxPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->width:I

    int-to-float v6, v6

    invoke-virtual {v5, v6, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 485
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    const/4 v5, 0x6

    if-lt v1, v5, :cond_1

    .line 491
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->boxPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellWidth:F

    mul-float/2addr v6, v12

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthHeight:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 492
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->boxPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->height:I

    int-to-float v6, v6

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthHeight:F

    sub-float/2addr v6, v7

    invoke-virtual {v5, v10, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 505
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthChangeBtnPaint:Landroid/graphics/Paint;

    .line 506
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthChangeBtnPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 507
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthChangeBtnPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 508
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthChangeBtnPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->btnColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 509
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellBgPaint:Landroid/graphics/Paint;

    .line 510
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 511
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellBgPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 512
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellBgPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellSelectedColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 513
    return-void

    .line 458
    .end local v0    # "cellTextSize":F
    .end local v1    # "i":I
    .end local v3    # "textSize":F
    .end local v4    # "weekTextSize":F
    :cond_0
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderWidth:F

    goto/16 :goto_0

    .line 486
    .restart local v0    # "cellTextSize":F
    .restart local v1    # "i":I
    .restart local v3    # "textSize":F
    .restart local v4    # "weekTextSize":F
    :cond_1
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->boxPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthHeight:F

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekHeight:F

    add-float/2addr v6, v7

    int-to-float v7, v1

    iget v8, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellHeight:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v5, v10, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 487
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->boxPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->width:I

    int-to-float v6, v6

    invoke-virtual {v5, v6, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 488
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->boxPath:Landroid/graphics/Path;

    int-to-float v6, v1

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellWidth:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthHeight:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 489
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->boxPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->height:I

    int-to-float v6, v6

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthHeight:F

    sub-float/2addr v6, v7

    invoke-virtual {v5, v10, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
