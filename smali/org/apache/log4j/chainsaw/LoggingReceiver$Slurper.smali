.class Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/chainsaw/LoggingReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Slurper"
.end annotation


# instance fields
.field private final mClient:Ljava/net/Socket;

.field private final this$0:Lorg/apache/log4j/chainsaw/LoggingReceiver;


# direct methods
.method constructor <init>(Lorg/apache/log4j/chainsaw/LoggingReceiver;Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;->this$0:Lorg/apache/log4j/chainsaw/LoggingReceiver;

    iput-object p2, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;->mClient:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "Starting to get data"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    iget-object v0, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;->mClient:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/spi/LoggingEvent;

    iget-object v2, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;->this$0:Lorg/apache/log4j/chainsaw/LoggingReceiver;

    invoke-static {v2}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$100(Lorg/apache/log4j/chainsaw/LoggingReceiver;)Lorg/apache/log4j/chainsaw/MyTableModel;

    move-result-object v2

    new-instance v3, Lorg/apache/log4j/chainsaw/EventDetails;

    invoke-direct {v3, v0}, Lorg/apache/log4j/chainsaw/EventDetails;-><init>(Lorg/apache/log4j/spi/LoggingEvent;)V

    invoke-virtual {v2, v3}, Lorg/apache/log4j/chainsaw/MyTableModel;->addEvent(Lorg/apache/log4j/chainsaw/EventDetails;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "Reached EOF, closing connection"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;->mClient:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    return-void

    :catch_1
    move-exception v0

    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "Caught SocketException, closing connection"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v1

    const-string v2, "Got IOException, closing connection"

    invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/Category;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v1

    const-string v2, "Got ClassNotFoundException, closing connection"

    invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/Category;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v1

    const-string v2, "Error closing connection"

    invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/Category;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
