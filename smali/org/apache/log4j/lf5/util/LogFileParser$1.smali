.class Lorg/apache/log4j/lf5/util/LogFileParser$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lorg/apache/log4j/lf5/util/LogFileParser;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/util/LogFileParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/util/LogFileParser$1;->this$0:Lorg/apache/log4j/lf5/util/LogFileParser;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser$1;->this$0:Lorg/apache/log4j/lf5/util/LogFileParser;

    invoke-static {v0}, Lorg/apache/log4j/lf5/util/LogFileParser;->access$000(Lorg/apache/log4j/lf5/util/LogFileParser;)V

    return-void
.end method
