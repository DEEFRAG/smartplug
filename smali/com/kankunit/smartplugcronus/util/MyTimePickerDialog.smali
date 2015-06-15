.class public Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "MyTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final SECONDS:Ljava/lang/String; = "seconds"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallback:Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;

.field private final mDateFormat:Ljava/text/DateFormat;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mInitialSeconds:I

.field mIs24HourView:Z

.field private final mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;IIIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "seconds"    # I
    .param p7, "is24HourView"    # Z

    .prologue
    const/4 v5, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 97
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->requestWindowFeature(I)Z

    .line 98
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mCallback:Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;

    .line 99
    iput p4, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mInitialHourOfDay:I

    .line 100
    iput p5, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mInitialMinute:I

    .line 101
    iput p6, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mInitialSeconds:I

    .line 102
    iput-boolean p7, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mIs24HourView:Z

    .line 104
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 106
    iget v2, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mInitialHourOfDay:I

    iget v3, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mInitialMinute:I

    iget v4, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mInitialSeconds:I

    invoke-direct {p0, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->updateTitle(III)V

    .line 108
    const v2, 0x7f0c0239

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, p0}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 109
    const v2, 0x7f0c023b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 113
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 114
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300e2

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->setView(Landroid/view/View;)V

    .line 116
    const v2, 0x7f07037b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/util/TimePicker;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    .line 119
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    iget v3, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 120
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    iget v3, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mInitialMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 121
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    iget v3, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mInitialSeconds:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setCurrentSecond(Ljava/lang/Integer;)V

    .line 122
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mIs24HourView:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 123
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-virtual {v2, p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setOnTimeChangedListener(Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;IIIZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "seconds"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    .line 80
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 81
    invoke-direct/range {v0 .. v7}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;-><init>(Landroid/content/Context;ILcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;IIIZ)V

    .line 82
    return-void
.end method

.method private updateTitle(III)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "seconds"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 146
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 147
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 148
    const-string v0, "Please select the delay time"

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mCallback:Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->clearFocus()V

    .line 129
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mCallback:Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/util/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 130
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/util/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/util/TimePicker;->getCurrentSeconds()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 129
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/kankunit/smartplugcronus/util/TimePicker;III)V

    .line 132
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 165
    const-string v3, "hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 166
    .local v0, "hour":I
    const-string v3, "minute"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 167
    .local v1, "minute":I
    const-string v3, "seconds"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 168
    .local v2, "seconds":I
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 169
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 170
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setCurrentSecond(Ljava/lang/Integer;)V

    .line 171
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    const-string v4, "is24hour"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 172
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-virtual {v3, p0}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setOnTimeChangedListener(Lcom/kankunit/smartplugcronus/util/TimePicker$OnTimeChangedListener;)V

    .line 173
    invoke-direct {p0, v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->updateTitle(III)V

    .line 174
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 155
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/util/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    const-string v1, "minute"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/util/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    const-string v1, "seconds"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/util/TimePicker;->getCurrentSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string v1, "is24hour"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/util/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    return-object v0
.end method

.method public onTimeChanged(Lcom/kankunit/smartplugcronus/util/TimePicker;III)V
    .locals 0
    .param p1, "view"    # Lcom/kankunit/smartplugcronus/util/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I
    .param p4, "seconds"    # I

    .prologue
    .line 135
    invoke-direct {p0, p2, p3, p4}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->updateTitle(III)V

    .line 136
    return-void
.end method

.method public updateTime(III)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minutOfHour"    # I
    .param p3, "seconds"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 140
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 141
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->mTimePicker:Lcom/kankunit/smartplugcronus/util/TimePicker;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/TimePicker;->setCurrentSecond(Ljava/lang/Integer;)V

    .line 142
    return-void
.end method
