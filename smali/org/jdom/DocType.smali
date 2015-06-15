.class public Lorg/jdom/DocType;
.super Lorg/jdom/Content;
.source "DocType.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: DocType.java,v $ $Revision: 1.32 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $"


# instance fields
.field protected elementName:Ljava/lang/String;

.field protected internalSubset:Ljava/lang/String;

.field protected publicID:Ljava/lang/String;

.field protected systemID:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0, v0}, Lorg/jdom/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/jdom/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    .line 111
    invoke-virtual {p0, p1}, Lorg/jdom/DocType;->setElementName(Ljava/lang/String;)Lorg/jdom/DocType;

    .line 112
    invoke-virtual {p0, p2}, Lorg/jdom/DocType;->setPublicID(Ljava/lang/String;)Lorg/jdom/DocType;

    .line 113
    invoke-virtual {p0, p3}, Lorg/jdom/DocType;->setSystemID(Ljava/lang/String;)Lorg/jdom/DocType;

    .line 114
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/jdom/DocType;->elementName:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalSubset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/jdom/DocType;->internalSubset:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/jdom/DocType;->publicID:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/jdom/DocType;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    const-string v0, ""

    return-object v0
.end method

.method public setElementName(Ljava/lang/String;)Lorg/jdom/DocType;
    .locals 3
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p1}, Lorg/jdom/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 171
    new-instance v1, Lorg/jdom/IllegalNameException;

    const-string v2, "DocType"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_0
    iput-object p1, p0, Lorg/jdom/DocType;->elementName:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setInternalSubset(Ljava/lang/String;)V
    .locals 0
    .param p1, "newData"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lorg/jdom/DocType;->internalSubset:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setPublicID(Ljava/lang/String;)Lorg/jdom/DocType;
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

    const-string v2, "DocType"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_0
    iput-object p1, p0, Lorg/jdom/DocType;->publicID:Ljava/lang/String;

    .line 204
    return-object p0
.end method

.method public setSystemID(Ljava/lang/String;)Lorg/jdom/DocType;
    .locals 3
    .param p1, "systemID"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-static {p1}, Lorg/jdom/Verifier;->checkSystemLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 231
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "DocType"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_0
    iput-object p1, p0, Lorg/jdom/DocType;->systemID:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[DocType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Lorg/jdom/output/XMLOutputter;

    invoke-direct {v1}, Lorg/jdom/output/XMLOutputter;-><init>()V

    invoke-virtual {v1, p0}, Lorg/jdom/output/XMLOutputter;->outputString(Lorg/jdom/DocType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
