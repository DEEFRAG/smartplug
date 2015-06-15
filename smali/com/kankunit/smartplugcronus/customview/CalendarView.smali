.class public Lcom/kankunit/smartplugcronus/customview/CalendarView;
.super Landroid/view/View;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/customview/CalendarView$OnItemClickListener;,
        Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "anCalendar"


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private curDate:Ljava/util/Date;

.field private curEndIndex:I

.field private curStartIndex:I

.field private date:[I

.field private downDate:Ljava/util/Date;

.field private downIndex:I

.field private onItemClickListener:Lcom/kankunit/smartplugcronus/customview/CalendarView$OnItemClickListener;

.field private selectedEndDate:Ljava/util/Date;

.field private selectedStartDate:Ljava/util/Date;

.field private showFirstDate:Ljava/util/Date;

.field private showLastDate:Ljava/util/Date;

.field private surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

.field private today:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const/16 v0, 0x2a

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->date:[I

    .line 40
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/16 v0, 0x2a

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->date:[I

    .line 45
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->init()V

    .line 46
    return-void
.end method

.method private calculateDate()V
    .locals 12

    .prologue
    const/16 v11, 0x2a

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x5

    .line 148
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 149
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 150
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 151
    .local v0, "dayInWeek":I
    const-string v5, "anCalendar"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "day in week:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    move v4, v0

    .line 153
    .local v4, "monthStart":I
    if-ne v4, v9, :cond_0

    .line 154
    const/16 v4, 0x8

    .line 156
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 157
    iput v4, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curStartIndex:I

    .line 158
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->date:[I

    aput v9, v5, v4

    .line 160
    if-lez v4, :cond_1

    .line 161
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 162
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 163
    .local v1, "dayInmonth":I
    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_3

    .line 167
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->date:[I

    aget v6, v6, v10

    invoke-virtual {v5, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 169
    .end local v1    # "dayInmonth":I
    .end local v2    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->showFirstDate:Ljava/util/Date;

    .line 171
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 172
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v9}, Ljava/util/Calendar;->add(II)V

    .line 173
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 176
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 177
    .local v3, "monthDay":I
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_1
    if-lt v2, v3, :cond_4

    .line 180
    add-int v5, v4, v3

    iput v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curEndIndex:I

    .line 182
    add-int v2, v4, v3

    :goto_2
    if-lt v2, v11, :cond_5

    .line 185
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curEndIndex:I

    if-ge v5, v11, :cond_2

    .line 187
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 189
    :cond_2
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->date:[I

    const/16 v7, 0x29

    aget v6, v6, v7

    invoke-virtual {v5, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 190
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->showLastDate:Ljava/util/Date;

    .line 191
    return-void

    .line 164
    .end local v3    # "monthDay":I
    .restart local v1    # "dayInmonth":I
    :cond_3
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->date:[I

    aput v1, v5, v2

    .line 165
    add-int/lit8 v1, v1, -0x1

    .line 163
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 178
    .end local v1    # "dayInmonth":I
    .restart local v3    # "monthDay":I
    :cond_4
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->date:[I

    add-int v6, v4, v2

    add-int/lit8 v7, v2, 0x1

    aput v7, v5, v6

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    :cond_5
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->date:[I

    add-int v6, v4, v3

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private drawCellBg(Landroid/graphics/Canvas;II)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I
    .param p3, "color"    # I

    .prologue
    .line 218
    invoke-direct {p0, p2}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->getXByIndex(I)I

    move-result v6

    .line 219
    .local v6, "x":I
    invoke-direct {p0, p2}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->getYByIndex(I)I

    move-result v7

    .line 220
    .local v7, "y":I
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v0, v0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellWidth:F

    add-int/lit8 v3, v6, -0x1

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v3, v3, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderWidth:F

    add-float v1, v0, v3

    .line 222
    .local v1, "left":F
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v0, v0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthHeight:F

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v3, v3, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekHeight:F

    add-float/2addr v0, v3

    add-int/lit8 v3, v7, -0x1

    int-to-float v3, v3

    .line 223
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v4, v4, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellHeight:F

    mul-float/2addr v3, v4

    .line 222
    add-float/2addr v0, v3

    .line 223
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v3, v3, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderWidth:F

    .line 222
    add-float v2, v0, v3

    .line 224
    .local v2, "top":F
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v0, v0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellWidth:F

    add-float/2addr v0, v1

    .line 225
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v3, v3, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderWidth:F

    sub-float v3, v0, v3

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v0, v0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellHeight:F

    add-float/2addr v0, v2

    .line 226
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v4, v4, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderWidth:F

    sub-float v4, v0, v4

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 224
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 227
    return-void
.end method

.method private drawCellText(Landroid/graphics/Canvas;ILjava/lang/String;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "color"    # I

    .prologue
    .line 200
    invoke-direct {p0, p2}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->getXByIndex(I)I

    move-result v2

    .line 201
    .local v2, "x":I
    invoke-direct {p0, p2}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->getYByIndex(I)I

    move-result v3

    .line 202
    .local v3, "y":I
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->datePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v4, v4, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthHeight:F

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v5, v5, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekHeight:F

    add-float/2addr v4, v5

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    .line 204
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v6, v6, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellHeight:F

    mul-float/2addr v5, v6

    .line 203
    add-float/2addr v4, v5

    .line 204
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v5, v5, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellHeight:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    .line 203
    add-float v1, v4, v5

    .line 205
    .local v1, "cellY":F
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v4, v4, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellWidth:F

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    .line 206
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v5, v5, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellWidth:F

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget-object v6, v6, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->datePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v5, v6

    .line 207
    const/high16 v6, 0x40000000    # 2.0f

    .line 206
    div-float/2addr v5, v6

    .line 205
    add-float v0, v4, v5

    .line 208
    .local v0, "cellX":F
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget-object v4, v4, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->datePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 209
    return-void
.end method

.method private drawDownOrSelectedBg(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 231
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->downDate:Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 232
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->downIndex:I

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v3, v3, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellDownColor:I

    invoke-direct {p0, p1, v2, v3}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->drawCellBg(Landroid/graphics/Canvas;II)V

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->selectedEndDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->showFirstDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 236
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->selectedStartDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->showLastDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 237
    new-array v1, v8, [I

    fill-array-data v1, :array_0

    .line 238
    .local v1, "section":[I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 239
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v8, v6}, Ljava/util/Calendar;->add(II)V

    .line 240
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curStartIndex:I

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-direct {p0, v7, v2, v3, v1}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->findSelectedIndex(IILjava/util/Calendar;[I)V

    .line 241
    aget v2, v1, v5

    if-ne v2, v6, :cond_1

    .line 242
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 243
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curStartIndex:I

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curEndIndex:I

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->findSelectedIndex(IILjava/util/Calendar;[I)V

    .line 245
    :cond_1
    aget v2, v1, v5

    if-ne v2, v6, :cond_2

    .line 246
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 247
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v8, v5}, Ljava/util/Calendar;->add(II)V

    .line 248
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curEndIndex:I

    const/16 v3, 0x2a

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->findSelectedIndex(IILjava/util/Calendar;[I)V

    .line 250
    :cond_2
    aget v2, v1, v7

    if-ne v2, v6, :cond_3

    .line 251
    aput v7, v1, v7

    .line 253
    :cond_3
    aget v2, v1, v5

    if-ne v2, v6, :cond_4

    .line 254
    const/16 v2, 0x29

    aput v2, v1, v5

    .line 256
    :cond_4
    aget v0, v1, v7

    .local v0, "i":I
    :goto_0
    aget v2, v1, v5

    if-le v0, v2, :cond_6

    .line 260
    .end local v0    # "i":I
    .end local v1    # "section":[I
    :cond_5
    return-void

    .line 257
    .restart local v0    # "i":I
    .restart local v1    # "section":[I
    :cond_6
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v2, v2, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellSelectedColor:I

    invoke-direct {p0, p1, v0, v2}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->drawCellBg(Landroid/graphics/Canvas;II)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private findSelectedIndex(IILjava/util/Calendar;[I)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "calendar"    # Ljava/util/Calendar;
    .param p4, "section"    # [I

    .prologue
    .line 264
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 276
    :goto_1
    return-void

    .line 265
    :cond_0
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->date:[I

    aget v3, v3, v0

    invoke-virtual {p3, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 266
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 268
    .local v1, "temp":Ljava/util/Date;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->selectedStartDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-nez v2, :cond_1

    .line 269
    const/4 v2, 0x0

    aput v0, p4, v2

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->selectedEndDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-nez v2, :cond_2

    .line 272
    const/4 v2, 0x1

    aput v0, p4, v2

    goto :goto_1

    .line 264
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getXByIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 301
    rem-int/lit8 v0, p1, 0x7

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getYByIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 305
    div-int/lit8 v0, p1, 0x7

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->today:Ljava/util/Date;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->selectedEndDate:Ljava/util/Date;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->selectedStartDate:Ljava/util/Date;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curDate:Ljava/util/Date;

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    .line 51
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 52
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;-><init>(Lcom/kankunit/smartplugcronus/customview/CalendarView;Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    .line 53
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->density:F

    .line 54
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v0, v0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->bgColor:I

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->setBackgroundColor(I)V

    .line 55
    invoke-virtual {p0, p0}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 56
    return-void
.end method

.method private isLastMonth(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 287
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curStartIndex:I

    if-ge p1, v0, :cond_0

    .line 288
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNextMonth(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 294
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curEndIndex:I

    if-lt p1, v0, :cond_0

    .line 295
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSelectedDateByCoor(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 350
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v2, v2, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthHeight:F

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v3, v3, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekHeight:F

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    .line 351
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v2, v2, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellWidth:F

    div-float v2, p1, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 353
    .local v0, "m":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v2, v2, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthHeight:F

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v3, v3, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekHeight:F

    add-float/2addr v2, v3

    sub-float v2, p2, v2

    .line 354
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v3, v3, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellHeight:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 353
    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 352
    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 355
    .local v1, "n":I
    add-int/lit8 v2, v1, -0x1

    mul-int/lit8 v2, v2, 0x7

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->downIndex:I

    .line 356
    const-string v2, "anCalendar"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downIndex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->downIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 358
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->downIndex:I

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->isLastMonth(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 359
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    const/4 v3, -0x1

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->add(II)V

    .line 363
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->date:[I

    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->downIndex:I

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 364
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->downDate:Ljava/util/Date;

    .line 366
    .end local v0    # "m":I
    .end local v1    # "n":I
    :cond_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->invalidate()V

    .line 367
    return-void

    .line 360
    .restart local v0    # "m":I
    .restart local v1    # "n":I
    :cond_2
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->downIndex:I

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->isNextMonth(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method


# virtual methods
.method public clickLeftMonth()Ljava/lang/String;
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 319
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 320
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curDate:Ljava/util/Date;

    .line 321
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->invalidate()V

    .line 322
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->getYearAndmonth()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clickRightMonth()Ljava/lang/String;
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 327
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 328
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curDate:Ljava/util/Date;

    .line 329
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->invalidate()V

    .line 330
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->getYearAndmonth()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedEndDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->selectedEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSelectedStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->selectedStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getYearAndmonth()Ljava/lang/String;
    .locals 4

    .prologue
    .line 310
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 311
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 312
    .local v1, "year":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 313
    .local v0, "month":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthText:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 92
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget-object v8, v8, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->boxPath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget-object v9, v9, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 102
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v8, v8, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->monthHeight:F

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v9, v9, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekHeight:F

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v9, v10

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    add-float v7, v8, v9

    .line 106
    .local v7, "weekTextY":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget-object v8, v8, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekText:[Ljava/lang/String;

    array-length v8, v8

    if-lt v2, v8, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calculateDate()V

    .line 118
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->drawDownOrSelectedBg(Landroid/graphics/Canvas;)V

    .line 121
    const/4 v3, -0x1

    .line 122
    .local v3, "todayIndex":I
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curDate:Ljava/util/Date;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v9, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 123
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "curYearAndMonth":Ljava/lang/String;
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->today:Ljava/util/Date;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 126
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v9, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 126
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "todayYearAndMonth":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 129
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->calendar:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 130
    .local v4, "todayNumber":I
    iget v8, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->curStartIndex:I

    add-int/2addr v8, v4

    add-int/lit8 v3, v8, -0x1

    .line 132
    .end local v4    # "todayNumber":I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/16 v8, 0x2a

    if-lt v2, v8, :cond_2

    .line 144
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 145
    return-void

    .line 107
    .end local v1    # "curYearAndMonth":Ljava/lang/String;
    .end local v3    # "todayIndex":I
    .end local v5    # "todayYearAndMonth":Ljava/lang/String;
    :cond_1
    int-to-float v8, v2

    .line 108
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v9, v9, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellWidth:F

    .line 107
    mul-float/2addr v8, v9

    .line 109
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v9, v9, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->cellWidth:F

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget-object v10, v10, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekPaint:Landroid/graphics/Paint;

    .line 110
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget-object v11, v11, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekText:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 109
    sub-float/2addr v9, v10

    .line 110
    const/high16 v10, 0x40000000    # 2.0f

    .line 109
    div-float/2addr v9, v10

    .line 107
    add-float v6, v8, v9

    .line 111
    .local v6, "weekTextX":F
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget-object v8, v8, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekText:[Ljava/lang/String;

    aget-object v8, v8, v2

    .line 112
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget-object v9, v9, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->weekPaint:Landroid/graphics/Paint;

    .line 111
    invoke-virtual {p1, v8, v6, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 133
    .end local v6    # "weekTextX":F
    .restart local v1    # "curYearAndMonth":Ljava/lang/String;
    .restart local v3    # "todayIndex":I
    .restart local v5    # "todayYearAndMonth":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    # getter for: Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->textColor:I
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->access$1(Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;)I

    move-result v0

    .line 134
    .local v0, "color":I
    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->isLastMonth(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 135
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    # getter for: Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderColor:I
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->access$2(Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;)I

    move-result v0

    .line 139
    :cond_3
    :goto_2
    const/4 v8, -0x1

    if-eq v3, v8, :cond_4

    if-ne v2, v3, :cond_4

    .line 140
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v0, v8, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->todayNumberColor:I

    .line 142
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->date:[I

    aget v9, v9, v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v2, v8, v0}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->drawCellText(Landroid/graphics/Canvas;ILjava/lang/String;I)V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    :cond_5
    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->isNextMonth(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 137
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    # getter for: Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->borderColor:I
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->access$2(Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;)I

    move-result v0

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->init()V

    .line 85
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 86
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 60
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->width:I

    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->height:I

    .line 68
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v0, v0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->width:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 70
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->surface:Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;

    iget v0, v0, Lcom/kankunit/smartplugcronus/customview/CalendarView$Surface;->height:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->setMeasuredDimension(II)V

    .line 73
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 74
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 371
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 400
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 373
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->setSelectedDateByCoor(FF)V

    goto :goto_0

    .line 376
    :pswitch_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->downDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->downDate:Ljava/util/Date;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->selectedEndDate:Ljava/util/Date;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->selectedStartDate:Ljava/util/Date;

    .line 391
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->onItemClickListener:Lcom/kankunit/smartplugcronus/customview/CalendarView$OnItemClickListener;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->selectedStartDate:Ljava/util/Date;

    invoke-interface {v0, v1}, Lcom/kankunit/smartplugcronus/customview/CalendarView$OnItemClickListener;->OnItemClick(Ljava/util/Date;)V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->downDate:Ljava/util/Date;

    .line 396
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/CalendarView;->invalidate()V

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnItemClickListener(Lcom/kankunit/smartplugcronus/customview/CalendarView$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/kankunit/smartplugcronus/customview/CalendarView$OnItemClickListener;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/CalendarView;->onItemClickListener:Lcom/kankunit/smartplugcronus/customview/CalendarView$OnItemClickListener;

    .line 406
    return-void
.end method
