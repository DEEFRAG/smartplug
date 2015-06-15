.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$24;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$24;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$24;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    const-string v1, "LogFactor5 Properties"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->showPropertiesDialog(Ljava/lang/String;)V

    return-void
.end method
