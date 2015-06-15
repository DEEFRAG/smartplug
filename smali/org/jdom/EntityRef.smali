.class public Lorg/jdom/EntityRef;
.super Lorg/jdom/Content;
.source "EntityRef.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: EntityRef.java,v $ $Revision: 1.22 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"


# instance fields
.field protected name:Ljava/lang/String;

.field protected publicID:Ljava/lang/String;

.field protected systemID:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0, v0}, Lorg/jdom/EntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/jdom/EntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    .line 127
    invoke-virtual {p0, p1}, Lorg/jdom/EntityRef;->setName(Ljava/lang/String;)Lorg/jdom/EntityRef;

    .line 128
    invoke-virtual {p0, p2}, Lorg/jdom/EntityRef;->setPublicID(Ljava/lang/String;)Lorg/jdom/EntityRef;

    .line 129
    invoke-virtual {p0, p3}, Lorg/jdom/EntityRef;->setSystemID(Ljava/lang/String;)Lorg/jdom/EntityRef;

    .line 130
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/jdom/EntityRef;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/jdom/EntityRef;->publicID:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/jdom/EntityRef;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, ""

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p1}, Lorg/jdom/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 183
    new-instance v1, Lorg/jdom/IllegalNameException;

    const-string v2, "EntityRef"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    iput-object p1, p0, Lorg/jdom/EntityRef;->name:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method public setPublicID(Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 3
    .param p1, "publicID"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-static {p1}, Lorg/jdom/Verifier;->checkPublicID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 200
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "EntityRef"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_0
    iput-object p1, p0, Lorg/jdom/EntityRef;->publicID:Ljava/lang/String;

    .line 203
    return-object p0
.end method

.method public setSystemID(Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 3
    .param p1, "systemID"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p1}, Lorg/jdom/Verifier;->checkSystemLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 217
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "EntityRef"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    iput-object p1, p0, Lorg/jdom/EntityRef;->systemID:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[EntityRef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom/EntityRef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
