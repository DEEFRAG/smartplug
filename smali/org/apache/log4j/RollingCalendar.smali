.class Lorg/apache/log4j/RollingCalendar;
.super Ljava/util/GregorianCalendar;


# static fields
.field private static final serialVersionUID:J = -0x3168d6e1c54238a1L


# instance fields
.field type:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    return-void
.end method


# virtual methods
.method public getNextCheckDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 7

    const/16 v6, 0xd

    const/16 v5, 0xb

    const/4 v4, 0x1

    const/16 v3, 0xc

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget v0, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown periodicity type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, v6, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v3, v4}, Ljava/util/GregorianCalendar;->add(II)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v6, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v5, v4}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v6, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v5, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, v4}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v5, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v6, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, v4}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v5, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v6, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v4}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v5, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v6, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v4}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getNextCheckMillis(Ljava/util/Date;)J
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/log4j/RollingCalendar;->getNextCheckDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method setType(I)V
    .locals 0

    iput p1, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    return-void
.end method
