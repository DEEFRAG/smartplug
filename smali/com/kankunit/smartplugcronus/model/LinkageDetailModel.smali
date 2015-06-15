.class public Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
.super Ljava/lang/Object;
.source "LinkageDetailModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_linkagedetail"
.end annotation


# instance fields
.field private body1:Ljava/lang/String;

.field private body2:Ljava/lang/String;

.field private body3:Ljava/lang/String;

.field private hum1:Ljava/lang/String;

.field private hum2:Ljava/lang/String;

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private isPoint:Ljava/lang/String;

.field private linkageId:Ljava/lang/String;

.field private lum1:Ljava/lang/String;

.field private lum2:Ljava/lang/String;

.field private lum3:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private repart:Ljava/lang/String;

.field private temp1:Ljava/lang/String;

.field private temp2:Ljava/lang/String;

.field private temp3:Ljava/lang/String;

.field private temp4:Ljava/lang/String;

.field private timer1:Ljava/lang/String;

.field private timer2:Ljava/lang/String;

.field private timer4:Ljava/lang/String;

.field private timer5:Ljava/lang/String;

.field private timer6:Ljava/lang/String;

.field private timer7:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->body1:Ljava/lang/String;

    return-object v0
.end method

.method public getBody2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->body2:Ljava/lang/String;

    return-object v0
.end method

.method public getBody3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->body3:Ljava/lang/String;

    return-object v0
.end method

.method public getHum1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->hum1:Ljava/lang/String;

    return-object v0
.end method

.method public getHum2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->hum2:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->id:I

    return v0
.end method

.method public getIsPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->isPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->linkageId:Ljava/lang/String;

    return-object v0
.end method

.method public getLum1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->lum1:Ljava/lang/String;

    return-object v0
.end method

.method public getLum2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->lum2:Ljava/lang/String;

    return-object v0
.end method

.method public getLum3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->lum3:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getRepart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->repart:Ljava/lang/String;

    return-object v0
.end method

.method public getTemp1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->temp1:Ljava/lang/String;

    return-object v0
.end method

.method public getTemp2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->temp2:Ljava/lang/String;

    return-object v0
.end method

.method public getTemp3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->temp3:Ljava/lang/String;

    return-object v0
.end method

.method public getTemp4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->temp4:Ljava/lang/String;

    return-object v0
.end method

.method public getTimer1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->timer1:Ljava/lang/String;

    return-object v0
.end method

.method public getTimer2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->timer2:Ljava/lang/String;

    return-object v0
.end method

.method public getTimer4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->timer4:Ljava/lang/String;

    return-object v0
.end method

.method public getTimer5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->timer5:Ljava/lang/String;

    return-object v0
.end method

.method public getTimer6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->timer6:Ljava/lang/String;

    return-object v0
.end method

.method public getTimer7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->timer7:Ljava/lang/String;

    return-object v0
.end method

.method public setBody1(Ljava/lang/String;)V
    .locals 0
    .param p1, "body1"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->body1:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setBody2(Ljava/lang/String;)V
    .locals 0
    .param p1, "body2"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->body2:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setBody3(Ljava/lang/String;)V
    .locals 0
    .param p1, "body3"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->body3:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setHum1(Ljava/lang/String;)V
    .locals 0
    .param p1, "hum1"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->hum1:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setHum2(Ljava/lang/String;)V
    .locals 0
    .param p1, "hum2"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->hum2:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->id:I

    .line 95
    return-void
.end method

.method public setIsPoint(Ljava/lang/String;)V
    .locals 0
    .param p1, "isPoint"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->isPoint:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setLinkageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkageId"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->linkageId:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setLum1(Ljava/lang/String;)V
    .locals 0
    .param p1, "lum1"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->lum1:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setLum2(Ljava/lang/String;)V
    .locals 0
    .param p1, "lum2"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->lum2:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setLum3(Ljava/lang/String;)V
    .locals 0
    .param p1, "lum3"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->lum3:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->mac:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->pwd:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setRepart(Ljava/lang/String;)V
    .locals 0
    .param p1, "repart"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->repart:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setTemp1(Ljava/lang/String;)V
    .locals 0
    .param p1, "temp1"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->temp1:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setTemp2(Ljava/lang/String;)V
    .locals 0
    .param p1, "temp2"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->temp2:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setTemp3(Ljava/lang/String;)V
    .locals 0
    .param p1, "temp3"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->temp3:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setTemp4(Ljava/lang/String;)V
    .locals 0
    .param p1, "temp4"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->temp4:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setTimer1(Ljava/lang/String;)V
    .locals 0
    .param p1, "timer1"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->timer1:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setTimer2(Ljava/lang/String;)V
    .locals 0
    .param p1, "timer2"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->timer2:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setTimer4(Ljava/lang/String;)V
    .locals 0
    .param p1, "timer4"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->timer4:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setTimer5(Ljava/lang/String;)V
    .locals 0
    .param p1, "timer5"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->timer5:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setTimer6(Ljava/lang/String;)V
    .locals 0
    .param p1, "timer6"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->timer6:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setTimer7(Ljava/lang/String;)V
    .locals 0
    .param p1, "timer7"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->timer7:Ljava/lang/String;

    .line 47
    return-void
.end method
