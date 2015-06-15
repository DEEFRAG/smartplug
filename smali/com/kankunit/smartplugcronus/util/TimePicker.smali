.class public Lcom/kankunit/smartplugcronus/util/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;,
        Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;
    }
.end annotation


# static fields
.field private static final NO_OP_CHANGE_LISTENER:Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;

.field public static final TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmText:Ljava/lang/String;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mCurrentSeconds:I

.field private final mHourPicker:Landroid/widget/NumberPicker;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:Z

.field private final mMinutePicker:Landroid/widget/NumberPicker;

.field private mOnTimeChangedListener:Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;

.field private final mPmText:Ljava/lang/String;

.field private final mSecondPicker:Landroid/widget/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/kankunit/smartplugcronus/util/TimePicker$1;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker$1;-><init>()V

    sput-object v0, Lcom/kankunit/smartplugcronus/util/TimePicker;->NO_OP_CHANGE_LISTENER:Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;

    .line 65
    new-instance v0, Lcom/kankunit/smartplugcronus/util/TimePicker$2;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker$2;-><init>()V

    .line 64
    sput-object v0, Lcom/kankunit/smartplugcronus/util/TimePicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v9, 0x3b

    const/16 v8, 0xc

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    iput v6, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentHour:I

    .line 76
    iput v6, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentMinute:I

    .line 77
    iput v6, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentSeconds:I

    .line 78
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 118
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 119
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0300e3

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 124
    const v4, 0x7f0701de

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/util/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    .line 125
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    new-instance v7, Lcom/kankunit/smartplugcronus/util/TimePicker$3;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/util/TimePicker$3;-><init>(Lcom/kankunit/smartplugcronus/util/TimePicker;)V

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 147
    const v4, 0x7f07037c

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/util/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    .line 148
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 149
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 150
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    sget-object v7, Lcom/kankunit/smartplugcronus/util/TimePicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 151
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    new-instance v7, Lcom/kankunit/smartplugcronus/util/TimePicker$4;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/util/TimePicker$4;-><init>(Lcom/kankunit/smartplugcronus/util/TimePicker;)V

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 160
    const v4, 0x7f07037d

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/util/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mSecondPicker:Landroid/widget/NumberPicker;

    .line 161
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mSecondPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 162
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mSecondPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 163
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mSecondPicker:Landroid/widget/NumberPicker;

    sget-object v7, Lcom/kankunit/smartplugcronus/util/TimePicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 164
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mSecondPicker:Landroid/widget/NumberPicker;

    new-instance v7, Lcom/kankunit/smartplugcronus/util/TimePicker$5;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/util/TimePicker$5;-><init>(Lcom/kankunit/smartplugcronus/util/TimePicker;)V

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 175
    const v4, 0x7f07037e

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/util/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 179
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->configurePickerRanges()V

    .line 182
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 183
    .local v0, "cal":Ljava/util/Calendar;
    sget-object v4, Lcom/kankunit/smartplugcronus/util/TimePicker;->NO_OP_CHANGE_LISTENER:Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setOnTimeChangedListener(Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;)V

    .line 186
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 187
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 188
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setCurrentSecond(Ljava/lang/Integer;)V

    .line 190
    iget v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentHour:I

    if-ge v4, v8, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mIsAm:Z

    .line 193
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 194
    .local v1, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "dfsAmPm":[Ljava/lang/String;
    aget-object v4, v2, v6

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mAmText:Ljava/lang/String;

    .line 196
    aget-object v4, v2, v5

    iput-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mPmText:Ljava/lang/String;

    .line 197
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mIsAm:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mAmText:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v5, Lcom/kankunit/smartplugcronus/util/TimePicker$6;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/util/TimePicker$6;-><init>(Lcom/kankunit/smartplugcronus/util/TimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 221
    invoke-virtual {p0, v6}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setEnabled(Z)V

    .line 223
    :cond_0
    return-void

    .end local v1    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v2    # "dfsAmPm":[Ljava/lang/String;
    :cond_1
    move v4, v6

    .line 190
    goto :goto_0

    .line 197
    .restart local v1    # "dfs":Ljava/text/DateFormatSymbols;
    .restart local v2    # "dfsAmPm":[Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mPmText:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/util/TimePicker;I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentHour:I

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/util/TimePicker;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/util/TimePicker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mPmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/util/TimePicker;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/util/TimePicker;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/util/TimePicker;)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/util/TimePicker;I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentMinute:I

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/util/TimePicker;I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentSeconds:I

    return-void
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/util/TimePicker;Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mIsAm:Z

    return-void
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/util/TimePicker;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mAmPmButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/util/TimePicker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mAmText:Ljava/lang/String;

    return-object v0
.end method

.method private configurePickerRanges()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 388
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 390
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 391
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    sget-object v1, Lcom/kankunit/smartplugcronus/util/TimePicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 392
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mAmPmButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 399
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 395
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 396
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 397
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private onTimeChanged()V
    .locals 4

    .prologue
    .line 402
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mOnTimeChangedListener:Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->getCurrentSeconds()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/kankunit/smartplugcronus/util/TimePicker;III)V

    .line 403
    return-void
.end method

.method private updateHourDisplay()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 375
    iget v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentHour:I

    .line 376
    .local v0, "currentHour":I
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    if-le v0, v2, :cond_1

    add-int/lit8 v0, v0, -0xc

    .line 381
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 382
    iget v1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentHour:I

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mIsAm:Z

    .line 383
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mAmText:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->onTimeChanged()V

    .line 385
    return-void

    .line 379
    :cond_1
    if-nez v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    .line 382
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 383
    :cond_3
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mPmText:Ljava/lang/String;

    goto :goto_2
.end method

.method private updateMinuteDisplay()V
    .locals 4

    .prologue
    .line 409
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentMinute:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 410
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mOnTimeChangedListener:Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->getCurrentSeconds()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/kankunit/smartplugcronus/util/TimePicker;III)V

    .line 411
    return-void
.end method

.method private updateSecondsDisplay()V
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mSecondPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentSeconds:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 418
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mOnTimeChangedListener:Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->getCurrentSeconds()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/kankunit/smartplugcronus/util/TimePicker;III)V

    .line 419
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentHour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSeconds()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentSeconds:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 288
    move-object v0, p1

    check-cast v0, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;

    .line 289
    .local v0, "ss":Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 290
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 291
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 292
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 282
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 283
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;

    iget v2, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentHour:I

    iget v3, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentMinute:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/kankunit/smartplugcronus/util/TimePicker$SavedState;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 313
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentHour:I

    .line 314
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->updateHourDisplay()V

    .line 315
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 347
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentMinute:I

    .line 348
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->updateMinuteDisplay()V

    .line 349
    return-void
.end method

.method public setCurrentSecond(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentSecond"    # Ljava/lang/Integer;

    .prologue
    .line 362
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mCurrentSeconds:I

    .line 363
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->updateSecondsDisplay()V

    .line 364
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 231
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    if-eq v0, p1, :cond_0

    .line 323
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 324
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->configurePickerRanges()V

    .line 325
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->updateHourDisplay()V

    .line 327
    :cond_0
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/TimePicker;->mOnTimeChangedListener:Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;

    .line 300
    return-void
.end method
