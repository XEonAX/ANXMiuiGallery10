.class public Lmiui/util/Patterns;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHINESE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field public static final CHINESE_TIME_PATTERN_STRING:Ljava/lang/String; = "(((([\u5468\u9031]|(\u661f\u671f))[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u65e5\u5929])(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5)(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))|(((((((\\d{4}|[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]{4}|(\u4eca|\u660e|\u5927?[\u540e\u5f8c]))\u5e74))?((1[012]|0?[1-9]|\u5341[\u4e00\u4e8c]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])\u6708))?|((\u672c|\u4e0b[\u4e2a\u500b]?|\u8fd9\u4e2a|\u9019\u500b)\u6708))((3[01]|[12][0-9]|0?[1-9]|\u4e09\u5341\u4e00?|(\u4e8c?\u5341)[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])(\u65e5|\u53f7|\u865f)))(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)|((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5))?(2[0-4]|(1|0?)[0-9]|\u4e8c\u5341[\u4e00\u4e8c\u4e09\u56db]?|\u5341?[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]|\u96f6|\u5341)(((\u65f6|\u70b9|\u6642|\u9ede|[Pp][Mm])(([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(\u5206(([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])\u79d2)?)?)?)|(:([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(:([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]))?))|((([\u5468\u9031]|(\u661f\u671f))[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u65e5\u5929])(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5)(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))|(((((((\\d{4}|[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]{4}|(\u4eca|\u660e|\u5927?[\u540e\u5f8c]))\u5e74))?((1[012]|0?[1-9]|\u5341[\u4e00\u4e8c]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])\u6708))?|((\u672c|\u4e0b[\u4e2a\u500b]?|\u8fd9\u4e2a|\u9019\u500b)\u6708))((3[01]|[12][0-9]|0?[1-9]|\u4e09\u5341\u4e00?|(\u4e8c?\u5341)[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])(\u65e5|\u53f7|\u865f)))(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|((((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9])|((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9])|(\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))((\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)|(\\s)+)((2[0-4]|(1|0?)[0-9]|\u4e8c\u5341[\u4e00\u4e8c\u4e09\u56db]?|\u5341?[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]|\u96f6|\u5341)(((\u65f6|\u70b9|\u6642|\u9ede|[Pp][Mm])(([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(\u5206(([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])\u79d2)?)?)?)|(:([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(:([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]))?))))|((((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9])|((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9])|(\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))((\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))?)"

.field public static final ENGLISH_TIME_PATTERN:Ljava/util/regex/Pattern;

.field public static final ENGLISH_TIME_PATTERN_STRING:Ljava/lang/String; = "(((((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM]))(\\s+,?|(,\\s*))(((((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))(\\s+,?|(,\\s*))\\d{4})|(((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))|(((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9]))|(((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9]))|((\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))))|((((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM]))(\\s+(,|([Oo][Nn]\\s+))?|(,\\s*))(\\b(([Mm][Oo][Nn]|[Tt][Uu][Ee][Ss]|[Tt][Hh][Uu][Rr]|[Ff][Rr][Ii]|[Ss][Uu][Nn])((\\.)|([Dd][Aa][Yy]))?|[Ww][Ee][Dd]((\\.)|([Nn][Ee][Ss][Dd][Aa][Yy]))?|[Ss][Aa][Tt]((\\.)|([Uu][Rr][Dd][Aa][Yy]))?)))|(((((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))(\\s+,?|(,\\s*))\\d{4})|(((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?)))))|(((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM])))"

.field public static final GOOD_IRI_CHAR:Ljava/lang/String; = "a-zA-Z0-9"

.field public static final TOP_LEVEL_DOMAIN_STR_FOR_WEB_URL:Ljava/lang/String; = "(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:\u03b4\u03bf\u03ba\u03b9\u03bc\u03ae|\u0438\u0441\u043f\u044b\u0442\u0430\u043d\u0438\u0435|\u0440\u0444|\u0441\u0440\u0431|\u05d8\u05e2\u05e1\u05d8|\u0622\u0632\u0645\u0627\u06cc\u0634\u06cc|\u0625\u062e\u062a\u0628\u0627\u0631|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u092a\u0930\u0940\u0915\u094d\u0937\u093e|\u092d\u093e\u0930\u0924|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0baa\u0bb0\u0bbf\u0b9f\u0bcd\u0b9a\u0bc8|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u30c6\u30b9\u30c8|\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u65b0\u52a0\u5761|\u6d4b\u8bd5|\u6e2c\u8a66|\u9999\u6e2f|\ud14c\uc2a4\ud2b8|\ud55c\uad6d|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))"

.field public static final TO_PATTERN_STRING:Ljava/lang/String; = "((\\s+[tT][oO]\\s+)|(\\s*[-\u5230\u81f3]\\s*))"

.field public static final WEB_URL:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-string v0, "((?:(http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:\u03b4\u03bf\u03ba\u03b9\u03bc\u03ae|\u0438\u0441\u043f\u044b\u0442\u0430\u043d\u0438\u0435|\u0440\u0444|\u0441\u0440\u0431|\u05d8\u05e2\u05e1\u05d8|\u0622\u0632\u0645\u0627\u06cc\u0634\u06cc|\u0625\u062e\u062a\u0628\u0627\u0631|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u092a\u0930\u0940\u0915\u094d\u0937\u093e|\u092d\u093e\u0930\u0924|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0baa\u0bb0\u0bbf\u0b9f\u0bcd\u0b9a\u0bc8|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u30c6\u30b9\u30c8|\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u65b0\u52a0\u5761|\u6d4b\u8bd5|\u6e2c\u8a66|\u9999\u6e2f|\ud14c\uc2a4\ud2b8|\ud55c\uad6d|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(\\/(?:(?:[a-zA-Z0-9\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?=\\b|[^\u0000-\u00ff]|$)"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    .line 61
    const-string v0, "(((((([\u5468\u9031]|(\u661f\u671f))[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u65e5\u5929])(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5)(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))|(((((((\\d{4}|[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]{4}|(\u4eca|\u660e|\u5927?[\u540e\u5f8c]))\u5e74))?((1[012]|0?[1-9]|\u5341[\u4e00\u4e8c]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])\u6708))?|((\u672c|\u4e0b[\u4e2a\u500b]?|\u8fd9\u4e2a|\u9019\u500b)\u6708))((3[01]|[12][0-9]|0?[1-9]|\u4e09\u5341\u4e00?|(\u4e8c?\u5341)[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])(\u65e5|\u53f7|\u865f)))(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)|((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5))?(2[0-4]|(1|0?)[0-9]|\u4e8c\u5341[\u4e00\u4e8c\u4e09\u56db]?|\u5341?[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]|\u96f6|\u5341)(((\u65f6|\u70b9|\u6642|\u9ede|[Pp][Mm])(([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(\u5206(([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])\u79d2)?)?)?)|(:([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(:([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]))?))|((([\u5468\u9031]|(\u661f\u671f))[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u65e5\u5929])(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5)(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))|(((((((\\d{4}|[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]{4}|(\u4eca|\u660e|\u5927?[\u540e\u5f8c]))\u5e74))?((1[012]|0?[1-9]|\u5341[\u4e00\u4e8c]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])\u6708))?|((\u672c|\u4e0b[\u4e2a\u500b]?|\u8fd9\u4e2a|\u9019\u500b)\u6708))((3[01]|[12][0-9]|0?[1-9]|\u4e09\u5341\u4e00?|(\u4e8c?\u5341)[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])(\u65e5|\u53f7|\u865f)))(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|((((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9])|((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9])|(\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))((\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)|(\\s)+)((2[0-4]|(1|0?)[0-9]|\u4e8c\u5341[\u4e00\u4e8c\u4e09\u56db]?|\u5341?[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]|\u96f6|\u5341)(((\u65f6|\u70b9|\u6642|\u9ede|[Pp][Mm])(([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(\u5206(([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])\u79d2)?)?)?)|(:([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(:([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]))?))))|((((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9])|((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9])|(\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))((\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))?))(((\\s+[tT][oO]\\s+)|(\\s*[-\u5230\u81f3]\\s*))((((([\u5468\u9031]|(\u661f\u671f))[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u65e5\u5929])(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5)(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))|(((((((\\d{4}|[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]{4}|(\u4eca|\u660e|\u5927?[\u540e\u5f8c]))\u5e74))?((1[012]|0?[1-9]|\u5341[\u4e00\u4e8c]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])\u6708))?|((\u672c|\u4e0b[\u4e2a\u500b]?|\u8fd9\u4e2a|\u9019\u500b)\u6708))((3[01]|[12][0-9]|0?[1-9]|\u4e09\u5341\u4e00?|(\u4e8c?\u5341)[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])(\u65e5|\u53f7|\u865f)))(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)|((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5))?(2[0-4]|(1|0?)[0-9]|\u4e8c\u5341[\u4e00\u4e8c\u4e09\u56db]?|\u5341?[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]|\u96f6|\u5341)(((\u65f6|\u70b9|\u6642|\u9ede|[Pp][Mm])(([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(\u5206(([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])\u79d2)?)?)?)|(:([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(:([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]))?))|((([\u5468\u9031]|(\u661f\u671f))[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u65e5\u5929])(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|(((\u4eca|\u660e|\u5927?\u540e)\u5929|\u6b21\u65e5)(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))|(((((((\\d{4}|[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]{4}|(\u4eca|\u660e|\u5927?[\u540e\u5f8c]))\u5e74))?((1[012]|0?[1-9]|\u5341[\u4e00\u4e8c]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])\u6708))?|((\u672c|\u4e0b[\u4e2a\u500b]?|\u8fd9\u4e2a|\u9019\u500b)\u6708))((3[01]|[12][0-9]|0?[1-9]|\u4e09\u5341\u4e00?|(\u4e8c?\u5341)[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])(\u65e5|\u53f7|\u865f)))(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?)|((((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9])|((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9])|(\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))((\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)|(\\s)+)((2[0-4]|(1|0?)[0-9]|\u4e8c\u5341[\u4e00\u4e8c\u4e09\u56db]?|\u5341?[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]|\u96f6|\u5341)(((\u65f6|\u70b9|\u6642|\u9ede|[Pp][Mm])(([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(\u5206(([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])\u79d2)?)?)?)|(:([123\u4e00\u4e8c\u4e09\u4e24]\u523b|\u534a|[1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169])(:([1-5][0-9]|0?[0-9]|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u96f6|\u5341|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u5169]))?))))|((((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9])|((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9])|(\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))((\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348))?)))?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/Patterns;->CHINESE_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 68
    const-string v0, "(((((((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM]))(\\s+,?|(,\\s*))(((((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))(\\s+,?|(,\\s*))\\d{4})|(((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))|(((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9]))|(((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9]))|((\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))))|((((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM]))(\\s+(,|([Oo][Nn]\\s+))?|(,\\s*))(\\b(([Mm][Oo][Nn]|[Tt][Uu][Ee][Ss]|[Tt][Hh][Uu][Rr]|[Ff][Rr][Ii]|[Ss][Uu][Nn])((\\.)|([Dd][Aa][Yy]))?|[Ww][Ee][Dd]((\\.)|([Nn][Ee][Ss][Dd][Aa][Yy]))?|[Ss][Aa][Tt]((\\.)|([Uu][Rr][Dd][Aa][Yy]))?)))|(((((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))(\\s+,?|(,\\s*))\\d{4})|(((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?)))))|(((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM]))))(((\\s+[tT][oO]\\s+)|(\\s*[-\u5230\u81f3]\\s*))((((((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM]))(\\s+,?|(,\\s*))(((((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))(\\s+,?|(,\\s*))\\d{4})|(((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))|(((\\d{4})-)?(1[012]|0?[1-9])-(3[01]|[12][0-9]|0?[1-9]))|(((\\d{4})/)?(1[012]|0?[1-9])/(3[01]|[12][0-9]|0?[1-9]))|((\\d{4})\\.(1[012]|0?[1-9])\\.(3[01]|[12][0-9]|0?[1-9]))))|((((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM]))(\\s+(,|([Oo][Nn]\\s+))?|(,\\s*))(\\b(([Mm][Oo][Nn]|[Tt][Uu][Ee][Ss]|[Tt][Hh][Uu][Rr]|[Ff][Rr][Ii]|[Ss][Uu][Nn])((\\.)|([Dd][Aa][Yy]))?|[Ww][Ee][Dd]((\\.)|([Nn][Ee][Ss][Dd][Aa][Yy]))?|[Ss][Aa][Tt]((\\.)|([Uu][Rr][Dd][Aa][Yy]))?)))|(((((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))))(\\s+,?|(,\\s*))\\d{4})|(((\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?))\\s+(1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3]))|((1([sS][tT])|2([nN][dD])|3([rR][dD])|((3[01]|[12][0-9]|0?[4-9])([tT][hH])?)|[1-3])\\s+(\\b([Jj](([Aa][Nn]((\\.)|([Uu][Aa][Rr][Yy]))?)|([Uu](([Nn]((\\.)|[Ee])?)|([Ll]((\\.)|[Yy])?))))|[Ff][Ee][Bb]((\\.)|([Rr][Uu][Aa][Rr][Yy]))?|[Mm][Aa](([Rr]((\\.)|([Cc][Hh]))?)|([Yy](\\.)?))|[Aa](([Pp][Rr]((\\.)|([Ii][Ll]))?)|([Uu][Gg]((\\.)|([Uu][Ss][Tt]))?))|([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])((\\.)|([Ee][Mm][Bb][Ee][Rr]))?|[Oo][Cc][Tt]((\\.)|([Oo][Bb][Ee][Rr]))?)))))|(((2[0-4]|(1|0?)[0-9]):([1-5][0-9]|0?[0-9])(:([1-5][0-9]|0?[0-9]))?([aApP][mM])?)|(2[0-4]|(1|0?)[0-9])([aApP][mM])))))?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/Patterns;->ENGLISH_TIME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
