Delivered-To: tasheena.thomas1994@gmail.com

Received: by 2002:a05:6622:c5:0:0:0:0 with SMTP id h5csp274202ivq;

        Wed, 4 May 2022 03:58:09 -0700 (PDT)

X-Received: by 2002:a05:6602:14d2:b0:65a:6e73:9e0b with SMTP id b18-20020a05660214d200b0065a6e739e0bmr4995693iow.138.1651661889491;

        Wed, 04 May 2022 03:58:09 -0700 (PDT)

ARC-Seal: i=1; a=rsa-sha256; t=1651661889; cv=none;

        d=google.com; s=arc-20160816;

        b=yGTmp+2rbgY3wsA5JJnkkOVkXzP62HZFMu4ewV+I3q6rk+NYXCKTz60Dhj1+9EMESK

         ue1DFmXCbX/Xl+wBHWcJogVz76zikSUwJdRTq18VJxvNOPuMqVWaFwbmPYi66LxTeDYi

         HW1x4WN0tA29ZPFNlbi7047tR0L097fmbqSCgadAJW1/1zO5ZQMHgzPmYIi0kaE6vRGs

         0nGLb/WTlJd76qNbNNscRit6CZl0AMLVt9RAfHnDHSFGD6J8QOAlZ0KJ8F5wcRI3p2jH

         ZmLhd8WWJotJrZMEY0RYWb/wFJxa/M/wWIyF8gt+TGEiTpnwOGlk7uIvg3/TeCrlM3A2

         UO9A==

ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;

        h=to:from:subject:date:message-id:auto-submitted:reply-to

         :mime-version:dkim-signature;

        bh=ltSCvoeW7OuNK/XmZe4ZacU4n10RXGh6EckWiaMqpEc=;

        b=K8DjTwcID3yTNUxtDkVxREHBoYjYr4xk9kmPf7YAUukuSKuSpYBNOUTWHMdFSKZ4FZ

         1Q9J7jUjrsxmMc64bSgr3FA6iaIFn2sBW6KuQbQxEVOw1+Ey5uijLntx6hh676da3M1m

         AqGU9sjOTVcX1yirSjbUsJnt7CYGAZnvJxiAqZN8LEV8WUgOL9IBzlHNoakzxDZYstpB

         CEgbgdeI4wZ6WHmlExcnWWe7928QDpAGMVwOSckmMMSFqjTB4sQnyGkGjBe3EJ+VacoR

         xbfMzoEoVzqbyYb9dAsqe8s/WF69EzvMQMBemTPZfh4VNryRfi/LeKaYJIMnU0YYFH+r

         LjDA==

ARC-Authentication-Results: i=1; mx.google.com;

       dkim=pass header.i=@google.com header.s=20210112 header.b=HaOV6T6F;

       spf=pass (google.com: domain of 3qvxyyhmjanwr8qfccl8.rfmk8qzhhcek8gj.amk@calendar-server.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3QVxyYhMJANwR8QFCCL8.RFMK8QZhhcEK8GJ.AMK@calendar-server.bounces.google.com;

       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com

Return-Path: <3QVxyYhMJANwR8QFCCL8.RFMK8QZhhcEK8GJ.AMK@calendar-server.bounces.google.com>

Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])

        by mx.google.com with SMTPS id c7-20020a023b07000000b0032670448da6sor7495880jaa.72.2022.05.04.03.58.09

        for <tasheena.thomas1994@gmail.com>

        (Google Transport Security);

        Wed, 04 May 2022 03:58:09 -0700 (PDT)

Received-SPF: pass (google.com: domain of 3qvxyyhmjanwr8qfccl8.rfmk8qzhhcek8gj.amk@calendar-server.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;

Authentication-Results: mx.google.com;

       dkim=pass header.i=@google.com header.s=20210112 header.b=HaOV6T6F;

       spf=pass (google.com: domain of 3qvxyyhmjanwr8qfccl8.rfmk8qzhhcek8gj.amk@calendar-server.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3QVxyYhMJANwR8QFCCL8.RFMK8QZhhcEK8GJ.AMK@calendar-server.bounces.google.com;

       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com

DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;

        d=google.com; s=20210112;

        h=mime-version:reply-to:auto-submitted:message-id:date:subject:from

         :to;

        bh=ltSCvoeW7OuNK/XmZe4ZacU4n10RXGh6EckWiaMqpEc=;

        b=HaOV6T6FNawR21uxNijVfjxLn/Qve7oErzgXk7DJxZvyruzM+O8/+jbzNG0blsbMZ+

         WBrXY/RQwVFTOMc32Kqf51NyAusxKAw/0ulQ20VYBxzFYy/w65X7JXbtP2hmxraogPAp

         zxWj2EVxjn9hV6UCJ8VggZIQk8XIh6c4cJhSqwGUD5vGywVE1CXvw/9nyee33JwNlvnO

         7fbZ/ZEk5i95O2O97pN91v/nrGO9GvbbTi6K8+d4yQJeThVnl2FKU0kOMsn7mLFDb2w4

         LDA+C1CqTuzBPypReXXXEsxFxopqW2hsgAtZhW3q1/MvMtTZBjWmu4IH/LLRdCwa/fxv

         wZNQ==

X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;

        d=1e100.net; s=20210112;

        h=x-gm-message-state:mime-version:reply-to:auto-submitted:message-id

         :date:subject:from:to;

        bh=ltSCvoeW7OuNK/XmZe4ZacU4n10RXGh6EckWiaMqpEc=;

        b=aWM6s++bY9+/dt2V23lwFh5ej9mD6TdNrkWOh9gF5G7NzeoZZuEtBLyHkDOECWtbbQ

         /GW0ctLQK9fJut2vU6vnEgTtY0sJorvvdatP9bJCw6Vm7Dk3SAMqAO5NAx9Jlqy9/+s+

         +I9E/7l7p8qDPYSzQ378PcDCj91wJxKkaWzKCGeFvr/+pmnsbMAQm0My1LB+yWcOrdWy

         SQ0MVAx+lRwDQeiXUmJlh6sgt+XkgOfWhUM9iJ63gnUIMVYGHB/utPJsq7sXv+nhuRES

         zQxBePtvJi/xq0Qfd+brod0EUJCl5YsJhmT6mIMQiwJOTNYJZRb3x45wM9+Ig2GaY0dM

         GC7w==

X-Gm-Message-State: AOAM532Om/lRCQ7vuw+OvHPzX4tejgE7Ay4Op65z8e63Haxt8OfyFOia Eo3F22rCgI8wqI+dPaiFTtn2zhOS8/Tl0NaQuatp

X-Google-Smtp-Source: ABdhPJzBH45ilpF069Eo9iwlxzmm1dcfnf+cT4vZWQ7FzPh3hSHxVkq/bTJlBtl0ZgawERrc0d/PLMprlNNa0b7bDj5V

MIME-Version: 1.0

X-Received: by 2002:a02:9009:0:b0:328:9e86:574f with SMTP id w9-20020a029009000000b003289e86574fmr9017997jaf.39.1651661889235; Wed, 04 May 2022 03:58:09 -0700 (PDT)

Reply-To: Tasheena Thomas <tasheena.thomas1994@gmail.com>

Auto-Submitted: auto-generated

Message-ID: <00000000000032701405de2d8032@google.com>

Date: Wed, 04 May 2022 10:58:09 +0000

Subject: You have no events scheduled today.

From: Google Calendar <calendar-notification@google.com>

To: Tasheena Thomas <tasheena.thomas1994@gmail.com>

Content-Type: multipart/alternative; boundary="00000000000032700605de2d802f"

--00000000000032700605de2d802f

Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

tasheena.thomas1994@gmail.com, you have no events scheduled today Wed May  

4, 2022.

View your calendar at https://calendar.google.com/calendar/

You are receiving this email at the account tasheena.thomas1994@gmail.com  

because you are subscribed to receive daily agendas for the following  

calendars: tasheena.thomas1994@gmail.com.

To change which calendars you receive daily agendas for, please log in to  

https://calendar.google.com/calendar/ and change your notification settings  

for each calendar.

--00000000000032700605de2d802f

Content-Type: text/html; charset="UTF-8"

Content-Transfer-Encoding: quoted-printable

<div style=3D"padding:10px 7px;font-size:14px;line-height:1.4;font-family:A=

rial,Sans-serif;text-align:left;bgcolor=3D#ffffff"><a href=3D"https://www.g=

oogle.com/calendar"><img alt=3D"Google Calendar" src=3D"https://calendar.go=

ogle.com/googlecalendar/images/calendarlogo/calendar_logo_en_41px_1x_r1.png=

"></a>

<p style=3D"margin:0;color:#0">tasheena.thomas1994@gmail.com,&nbsp;you have=

 no events scheduled today <b>Wed May 4, 2022</b></p>

<p style=3D"font-family:Arial,Sans-serif;color:#666;font-size:11px">You are=

 receiving this email at the account tasheena.thomas1994@gmail.com because =

you are subscribed to receive daily agendas for the following calendars: <a=

 href=3D"https://calendar.google.com/calendar/render?cid=3Dtasheena.thomas1=

994%40gmail.com">tasheena.thomas1994@gmail.com</a>.</p>

<p style=3D"font-family:Arial,Sans-serif;color:#666;font-size:11px">To chan=

ge which calendars you receive daily agendas for, please log in to https://=

calendar.google.com/calendar/ and change your notification settings for eac=

h calendar.</p></div>

--00000000000032700605de2d802f--
