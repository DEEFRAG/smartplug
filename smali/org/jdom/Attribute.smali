.class public Lorg/jdom/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CDATA_TYPE:I = 0x1

.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Attribute.java,v $ $Revision: 1.56 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $"

.field public static final ENTITIES_TYPE:I = 0x6

.field public static final ENTITY_TYPE:I = 0x5

.field public static final ENUMERATED_TYPE:I = 0xa

.field public static final IDREFS_TYPE:I = 0x4

.field public static final IDREF_TYPE:I = 0x3

.field public static final ID_TYPE:I = 0x2

.field public static final NMTOKENS_TYPE:I = 0x8

.field public static final NMTOKEN_TYPE:I = 0x7

.field public static final NOTATION_TYPE:I = 0x9

.field public static final UNDECLARED_TYPE:I


# instance fields
.field protected name:Ljava/lang/String;

.field protected transient namespace:Lorg/jdom/Namespace;

.field protected parent:Lorg/jdom/Element;

.field protected type:I

.field protected value:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/Attribute;->type:I

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 251
    const/4 v0, 0x0

    sget-object v1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)V

    .line 252
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 275
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)V

    .line 276
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/Attribute;->type:I

    .line 227
    invoke-virtual {p0, p1}, Lorg/jdom/Attribute;->setName(Ljava/lang/String;)Lorg/jdom/Attribute;

    .line 228
    invoke-virtual {p0, p2}, Lorg/jdom/Attribute;->setValue(Ljava/lang/String;)Lorg/jdom/Attribute;

    .line 229
    invoke-virtual {p0, p3}, Lorg/jdom/Attribute;->setAttributeType(I)Lorg/jdom/Attribute;

    .line 230
    invoke-virtual {p0, p4}, Lorg/jdom/Attribute;->setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Attribute;

    .line 231
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)V

    .line 206
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 712
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 714
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    .line 716
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 705
    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 706
    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 707
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 569
    const/4 v1, 0x0

    .line 571
    .local v1, "attribute":Lorg/jdom/Attribute;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/jdom/Attribute;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_0
    const/4 v2, 0x0

    iput-object v2, v1, Lorg/jdom/Attribute;->parent:Lorg/jdom/Element;

    .line 582
    return-object v1

    .line 573
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public detach()Lorg/jdom/Attribute;
    .locals 3

    .prologue
    .line 322
    invoke-virtual {p0}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object v0

    .line 323
    .local v0, "parentElement":Lorg/jdom/Element;
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jdom/Element;->removeAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Z

    .line 327
    :cond_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    .line 551
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributeType()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lorg/jdom/Attribute;->type:I

    return v0
.end method

.method public getBooleanValue()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/DataConversionException;
        }
    .end annotation

    .prologue
    .line 678
    iget-object v1, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "valueTrim":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    :cond_0
    const/4 v1, 0x1

    .line 691
    :goto_0
    return v1

    .line 685
    :cond_1
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 691
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 693
    :cond_3
    new-instance v1, Lorg/jdom/DataConversionException;

    iget-object v2, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    const-string v3, "boolean"

    invoke-direct {v1, v2, v3}, Lorg/jdom/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public getDocument()Lorg/jdom/Document;
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object v0

    .line 297
    .local v0, "parentElement":Lorg/jdom/Element;
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lorg/jdom/Element;->getDocument()Lorg/jdom/Document;

    move-result-object v1

    .line 301
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDoubleValue()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/DataConversionException;
        }
    .end annotation

    .prologue
    .line 653
    :try_start_0
    iget-object v2, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 661
    :goto_0
    return-wide v2

    .line 654
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "v":Ljava/lang/String;
    const-string v2, "INF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 660
    :cond_0
    const-string v2, "-INF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 661
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 663
    :cond_1
    new-instance v2, Lorg/jdom/DataConversionException;

    iget-object v3, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    const-string v4, "double"

    invoke-direct {v2, v3, v4}, Lorg/jdom/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public getFloatValue()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/DataConversionException;
        }
    .end annotation

    .prologue
    .line 635
    :try_start_0
    iget-object v1, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/jdom/DataConversionException;

    iget-object v2, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    const-string v3, "float"

    invoke-direct {v1, v2, v3}, Lorg/jdom/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public getIntValue()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/DataConversionException;
        }
    .end annotation

    .prologue
    .line 600
    :try_start_0
    iget-object v1, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/jdom/DataConversionException;

    iget-object v2, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    const-string v3, "int"

    invoke-direct {v1, v2, v3}, Lorg/jdom/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public getLongValue()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/DataConversionException;
        }
    .end annotation

    .prologue
    .line 617
    :try_start_0
    iget-object v1, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/jdom/DataConversionException;

    iget-object v2, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    const-string v3, "long"

    invoke-direct {v1, v2, v3}, Lorg/jdom/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/jdom/Namespace;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    return-object v0
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/jdom/Element;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/jdom/Attribute;->parent:Lorg/jdom/Element;

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 391
    iget-object v1, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    .line 397
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 560
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAttributeType(I)Lorg/jdom/Attribute;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 516
    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 517
    :cond_0
    new-instance v0, Lorg/jdom/IllegalDataException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attribute"

    const-string v3, "Illegal attribute type"

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_1
    iput p1, p0, Lorg/jdom/Attribute;->type:I

    .line 521
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/jdom/Attribute;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-static {p1}, Lorg/jdom/Verifier;->checkAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 363
    new-instance v1, Lorg/jdom/IllegalNameException;

    const-string v2, "attribute"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 365
    :cond_0
    iput-object p1, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    .line 366
    return-object p0
.end method

.method public setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Attribute;
    .locals 4
    .param p1, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 452
    if-nez p1, :cond_0

    .line 453
    sget-object p1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    .line 458
    :cond_0
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    if-eq p1, v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    new-instance v0, Lorg/jdom/IllegalNameException;

    const-string v1, ""

    const-string v2, "attribute namespace"

    const-string v3, "An attribute namespace without a prefix can only be the NO_NAMESPACE namespace"

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_1
    iput-object p1, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    .line 465
    return-object p0
.end method

.method protected setParent(Lorg/jdom/Element;)Lorg/jdom/Attribute;
    .locals 0
    .param p1, "parent"    # Lorg/jdom/Element;

    .prologue
    .line 311
    iput-object p1, p0, Lorg/jdom/Attribute;->parent:Lorg/jdom/Element;

    .line 312
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lorg/jdom/Attribute;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 489
    invoke-static {p1}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 491
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "attribute"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 493
    :cond_0
    iput-object p1, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    .line 494
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 532
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[Attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
