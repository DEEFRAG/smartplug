.class Lorg/bouncycastle/jce/provider/AnnotatedException;
.super Ljava/lang/Exception;


# instance fields
.field private _underlyingException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/AnnotatedException;->_underlyingException:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method getUnderlyingException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/AnnotatedException;->_underlyingException:Ljava/lang/Exception;

    return-object v0
.end method
