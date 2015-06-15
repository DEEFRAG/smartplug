.class Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;
.super Ljava/lang/Object;
.source "ProfilerTimerFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerWorker"
.end annotation


# instance fields
.field private final callsNumber:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lock:Ljava/lang/Object;

.field private final maximum:Ljava/util/concurrent/atomic/AtomicLong;

.field private final minimum:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;

.field private final total:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V
    .locals 1

    .prologue
    .line 804
    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->this$0:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->lock:Ljava/lang/Object;

    .line 805
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->total:Ljava/util/concurrent/atomic/AtomicLong;

    .line 806
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->callsNumber:Ljava/util/concurrent/atomic/AtomicLong;

    .line 807
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->minimum:Ljava/util/concurrent/atomic/AtomicLong;

    .line 808
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    .line 809
    return-void
.end method


# virtual methods
.method public addNewDuration(J)V
    .locals 4
    .param p1, "duration"    # J

    .prologue
    .line 819
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->callsNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 820
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 822
    iget-object v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 824
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->minimum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 825
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->minimum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 829
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 830
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 832
    :cond_1
    monitor-exit v1

    .line 833
    return-void

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAverage()D
    .locals 6

    .prologue
    .line 841
    iget-object v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 843
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->callsNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v4

    div-long/2addr v2, v4

    long-to-double v2, v2

    monitor-exit v1

    return-wide v2

    .line 844
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCallsNumber()J
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->callsNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximum()J
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimum()J
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->minimum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
