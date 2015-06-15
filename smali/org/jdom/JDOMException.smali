.class public Lorg/jdom/JDOMException;
.super Ljava/lang/Exception;
.source "JDOMException.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JDOMException.java,v $ $Revision: 1.24 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    const-string v0, "Error occurred in JDOM application."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 113
    iput-object p2, p0, Lorg/jdom/JDOMException;->cause:Ljava/lang/Throwable;

    .line 114
    return-void
.end method

.method private static getNestedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "parent"    # Ljava/lang/Throwable;

    .prologue
    .line 274
    instance-of v1, p0, Lorg/jdom/JDOMException;

    if-eqz v1, :cond_1

    .line 275
    check-cast p0, Lorg/jdom/JDOMException;

    .end local p0    # "parent":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/jdom/JDOMException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 311
    .restart local p0    # "parent":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-object v0

    .line 278
    :cond_1
    instance-of v1, p0, Lorg/xml/sax/SAXException;

    if-eqz v1, :cond_2

    .line 279
    check-cast p0, Lorg/xml/sax/SAXException;

    .end local p0    # "parent":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    goto :goto_0

    .line 282
    .restart local p0    # "parent":Ljava/lang/Throwable;
    :cond_2
    instance-of v1, p0, Ljava/sql/SQLException;

    if-eqz v1, :cond_3

    .line 283
    check-cast p0, Ljava/sql/SQLException;

    .end local p0    # "parent":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    goto :goto_0

    .line 286
    .restart local p0    # "parent":Ljava/lang/Throwable;
    :cond_3
    instance-of v1, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_4

    .line 287
    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    .end local p0    # "parent":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 290
    .restart local p0    # "parent":Ljava/lang/Throwable;
    :cond_4
    instance-of v1, p0, Ljava/lang/ExceptionInInitializerError;

    if-eqz v1, :cond_5

    .line 291
    check-cast p0, Ljava/lang/ExceptionInInitializerError;

    .end local p0    # "parent":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljava/lang/ExceptionInInitializerError;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 294
    .restart local p0    # "parent":Ljava/lang/Throwable;
    :cond_5
    instance-of v1, p0, Ljava/rmi/RemoteException;

    if-eqz v1, :cond_6

    .line 295
    check-cast p0, Ljava/rmi/RemoteException;

    .end local p0    # "parent":Ljava/lang/Throwable;
    iget-object v0, p0, Ljava/rmi/RemoteException;->detail:Ljava/lang/Throwable;

    goto :goto_0

    .line 301
    .restart local p0    # "parent":Ljava/lang/Throwable;
    :cond_6
    const-string v1, "javax.naming.NamingException"

    const-string v2, "getRootCause"

    invoke-static {p0, v1, v2}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    .line 302
    .local v0, "nestedException":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 306
    const-string v1, "javax.servlet.ServletException"

    const-string v2, "getRootCause"

    invoke-static {p0, v1, v2}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    .line 307
    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getNestedException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 6
    .param p0, "parent"    # Ljava/lang/Throwable;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 320
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 321
    .local v4, "testClass":Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 322
    .local v3, "objectClass":Ljava/lang/Class;
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 324
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Class;

    .line 325
    .local v0, "argClasses":[Ljava/lang/Class;
    invoke-virtual {v4, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 326
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v1, v5, [Ljava/lang/Object;

    .line 327
    .local v1, "args":[Ljava/lang/Object;
    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v0    # "argClasses":[Ljava/lang/Class;
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "objectClass":Ljava/lang/Class;
    .end local v4    # "testClass":Ljava/lang/Class;
    :goto_0
    return-object v5

    .line 330
    :catch_0
    move-exception v5

    .line 337
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/jdom/JDOMException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 7

    .prologue
    .line 138
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "msg":Ljava/lang/String;
    move-object v4, p0

    .line 144
    .local v4, "parent":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v4}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "child":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "msg2":Ljava/lang/String;
    instance-of v5, v0, Lorg/xml/sax/SAXException;

    if-eqz v5, :cond_0

    move-object v5, v0

    .line 152
    check-cast v5, Lorg/xml/sax/SAXException;

    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 156
    .local v1, "grandchild":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    const/4 v3, 0x0

    .line 162
    .end local v1    # "grandchild":Ljava/lang/Throwable;
    :cond_0
    if-eqz v3, :cond_1

    .line 163
    if-eqz v2, :cond_3

    .line 164
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    :cond_1
    :goto_1
    instance-of v5, v0, Lorg/jdom/JDOMException;

    if-eqz v5, :cond_4

    .line 179
    .end local v3    # "msg2":Ljava/lang/String;
    :cond_2
    return-object v2

    .line 166
    .restart local v3    # "msg2":Ljava/lang/String;
    :cond_3
    move-object v2, v3

    goto :goto_1

    .line 175
    :cond_4
    move-object v4, v0

    .line 176
    goto :goto_0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 125
    iput-object p1, p0, Lorg/jdom/JDOMException;->cause:Ljava/lang/Throwable;

    .line 126
    return-object p0
.end method

.method public printStackTrace()V
    .locals 4

    .prologue
    .line 189
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    move-object v1, p0

    .line 195
    .local v1, "parent":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v1}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "child":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 196
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Caused by: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    instance-of v2, v0, Lorg/jdom/JDOMException;

    if-eqz v2, :cond_1

    .line 205
    :cond_0
    return-void

    .line 203
    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 216
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 218
    move-object v1, p0

    .line 222
    .local v1, "parent":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v1}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "child":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 223
    const-string v2, "Caused by: "

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 227
    instance-of v2, v0, Lorg/jdom/JDOMException;

    if-eqz v2, :cond_1

    .line 232
    :cond_0
    return-void

    .line 230
    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "w"    # Ljava/io/PrintWriter;

    .prologue
    .line 243
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 245
    move-object v1, p0

    .line 249
    .local v1, "parent":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v1}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "child":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 250
    const-string v2, "Caused by: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 254
    instance-of v2, v0, Lorg/jdom/JDOMException;

    if-eqz v2, :cond_1

    .line 259
    :cond_0
    return-void

    .line 257
    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
