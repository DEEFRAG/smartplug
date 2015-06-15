.class Lorg/jdom/xpath/JaxenXPath;
.super Lorg/jdom/xpath/XPath;
.source "JaxenXPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/xpath/JaxenXPath$NSContext;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JaxenXPath.java,v $ $Revision: 1.20 $ $Date: 2007/11/10 05:29:02 $ $Name: jdom_1_1 $"


# instance fields
.field private currentContext:Ljava/lang/Object;

.field private transient xPath:Lorg/jaxen/jdom/JDOMXPath;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "expr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/jdom/xpath/XPath;-><init>()V

    .line 99
    invoke-direct {p0, p1}, Lorg/jdom/xpath/JaxenXPath;->setXPath(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method static access$000(Lorg/jdom/xpath/JaxenXPath;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jdom/xpath/JaxenXPath;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    return-object v0
.end method

.method private setXPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "expr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 281
    :try_start_0
    new-instance v1, Lorg/jaxen/jdom/JDOMXPath;

    invoke-direct {v1, p1}, Lorg/jaxen/jdom/JDOMXPath;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    .line 282
    iget-object v1, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    new-instance v2, Lorg/jdom/xpath/JaxenXPath$NSContext;

    invoke-direct {v2, p0}, Lorg/jdom/xpath/JaxenXPath$NSContext;-><init>(Lorg/jdom/xpath/JaxenXPath;)V

    invoke-virtual {v1, v2}, Lorg/jaxen/jdom/JDOMXPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "ex1":Ljava/lang/Exception;
    new-instance v1, Lorg/jdom/JDOMException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid XPath expression: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addNamespace(Lorg/jdom/Namespace;)V
    .locals 3
    .param p1, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {p1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jaxen/jdom/JDOMXPath;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 295
    instance-of v2, p1, Lorg/jdom/xpath/JaxenXPath;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 296
    check-cast v0, Lorg/jdom/xpath/JaxenXPath;

    .line 298
    .local v0, "x":Lorg/jdom/xpath/JaxenXPath;
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v2}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v3}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 301
    .end local v0    # "x":Lorg/jdom/xpath/JaxenXPath;
    :cond_0
    return v1
.end method

.method public getXPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v0}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 5
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 213
    :try_start_0
    iput-object p1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v1, p1}, Lorg/jaxen/jdom/JDOMXPath;->numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 222
    iput-object v4, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    return-object v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "ex1":Lorg/jaxen/JaxenException;
    :try_start_1
    new-instance v1, Lorg/jdom/JDOMException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "XPath error while evaluating \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v3}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    .end local v0    # "ex1":Lorg/jaxen/JaxenException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    throw v1
.end method

.method public selectNodes(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 120
    :try_start_0
    iput-object p1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v1, p1}, Lorg/jaxen/jdom/JDOMXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 129
    iput-object v4, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "ex1":Lorg/jaxen/JaxenException;
    :try_start_1
    new-instance v1, Lorg/jdom/JDOMException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "XPath error while evaluating \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v3}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local v0    # "ex1":Lorg/jaxen/JaxenException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    throw v1
.end method

.method public selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 151
    :try_start_0
    iput-object p1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v1, p1}, Lorg/jaxen/jdom/JDOMXPath;->selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 160
    iput-object v4, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex1":Lorg/jaxen/JaxenException;
    :try_start_1
    new-instance v1, Lorg/jdom/JDOMException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "XPath error while evaluating \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v3}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .end local v0    # "ex1":Lorg/jaxen/JaxenException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    throw v1
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v1, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v1}, Lorg/jaxen/jdom/JDOMXPath;->getVariableContext()Lorg/jaxen/VariableContext;

    move-result-object v0

    .line 241
    .local v0, "o":Lorg/jaxen/VariableContext;
    instance-of v1, v0, Lorg/jaxen/SimpleVariableContext;

    if-eqz v1, :cond_0

    .line 242
    check-cast v0, Lorg/jaxen/SimpleVariableContext;

    .end local v0    # "o":Lorg/jaxen/VariableContext;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lorg/jaxen/SimpleVariableContext;->setVariableValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v0}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 180
    :try_start_0
    iput-object p1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    .line 182
    iget-object v1, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v1, p1}, Lorg/jaxen/jdom/JDOMXPath;->stringValueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 189
    iput-object v4, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "ex1":Lorg/jaxen/JaxenException;
    :try_start_1
    new-instance v1, Lorg/jdom/JDOMException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "XPath error while evaluating \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v3}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    .end local v0    # "ex1":Lorg/jaxen/JaxenException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    throw v1
.end method
