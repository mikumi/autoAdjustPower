FasdUAS 1.101.10   ��   ��    k             l     ��  ��      autoAdjustPower.app     � 	 	 (   a u t o A d j u s t P o w e r . a p p   
  
 l     ��  ��      VERSION 1.0.0     �      V E R S I O N   1 . 0 . 0      l     ��������  ��  ��        l     ��  ��    "  Author: me@michael-kuck.com     �   8   A u t h o r :   m e @ m i c h a e l - k u c k . c o m      l     ��������  ��  ��        l     ��  ��    b \ Start/stop applications & services automatically on your Mac if you switch power source (AC     �   �   S t a r t / s t o p   a p p l i c a t i o n s   &   s e r v i c e s   a u t o m a t i c a l l y   o n   y o u r   M a c   i f   y o u   s w i t c h   p o w e r   s o u r c e   ( A C      l     ��   ��      or battery).      � ! !    o r   b a t t e r y ) .   " # " l     �� $ %��   $       % � & &    #  ' ( ' l     �� ) *��   ) ' ! Copyright (c) 2014, Michael Kuck    * � + + B   C o p y r i g h t   ( c )   2 0 1 4 ,   M i c h a e l   K u c k (  , - , l     �� . /��   .   All rights reserved.    / � 0 0 *   A l l   r i g h t s   r e s e r v e d . -  1 2 1 l     �� 3 4��   3       4 � 5 5    2  6 7 6 l     �� 8 9��   8 \ V Redistribution and use in source and binary forms, with or without modification, are     9 � : : �   R e d i s t r i b u t i o n   a n d   u s e   i n   s o u r c e   a n d   b i n a r y   f o r m s ,   w i t h   o r   w i t h o u t   m o d i f i c a t i o n ,   a r e   7  ; < ; l     �� = >��   = @ : permitted provided that the following conditions are met:    > � ? ? t   p e r m i t t e d   p r o v i d e d   t h a t   t h e   f o l l o w i n g   c o n d i t i o n s   a r e   m e t : <  @ A @ l     �� B C��   B       C � D D    A  E F E l     �� G H��   G ^ X 1. Redistributions of source code must retain the above copyright notice, this list of     H � I I �   1 .   R e d i s t r i b u t i o n s   o f   s o u r c e   c o d e   m u s t   r e t a i n   t h e   a b o v e   c o p y r i g h t   n o t i c e ,   t h i s   l i s t   o f   F  J K J l     �� L M��   L 1 +   conditions and the following disclaimer.    M � N N V       c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r . K  O P O l     �� Q R��   Q       R � S S    P  T U T l     �� V W��   V a [ 2. Redistributions in binary form must reproduce the above copyright notice, this list of     W � X X �   2 .   R e d i s t r i b u t i o n s   i n   b i n a r y   f o r m   m u s t   r e p r o d u c e   t h e   a b o v e   c o p y r i g h t   n o t i c e ,   t h i s   l i s t   o f   U  Y Z Y l     �� [ \��   [ ] W   conditions and the following disclaimer in the documentation and/or other materials     \ � ] ] �       c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r   i n   t h e   d o c u m e n t a t i o n   a n d / o r   o t h e r   m a t e r i a l s   Z  ^ _ ^ l     �� ` a��   ` ( "   provided with the distribution.    a � b b D       p r o v i d e d   w i t h   t h e   d i s t r i b u t i o n . _  c d c l     �� e f��   e       f � g g    d  h i h l     �� j k��   j a [ 3. Neither the name of the copyright holder nor the names of its contributors may be used     k � l l �   3 .   N e i t h e r   t h e   n a m e   o f   t h e   c o p y r i g h t   h o l d e r   n o r   t h e   n a m e s   o f   i t s   c o n t r i b u t o r s   m a y   b e   u s e d   i  m n m l     �� o p��   o b \   to endorse or promote products derived from this software without specific prior written     p � q q �       t o   e n d o r s e   o r   p r o m o t e   p r o d u c t s   d e r i v e d   f r o m   t h i s   s o f t w a r e   w i t h o u t   s p e c i f i c   p r i o r   w r i t t e n   n  r s r l     �� t u��   t     permission.    u � v v        p e r m i s s i o n . s  w x w l     �� y z��   y       z � { {    x  | } | l     �� ~ ��   ~ S M THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"      � � � �   T H I S   S O F T W A R E   I S   P R O V I D E D   B Y   T H E   C O P Y R I G H T   H O L D E R S   A N D   C O N T R I B U T O R S   " A S   I S "   }  � � � l     �� � ���   � Q K AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE     � � � � �   A N D   A N Y   E X P R E S S   O R   I M P L I E D   W A R R A N T I E S ,   I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   T H E   �  � � � l     �� � ���   � R L IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE     � � � � �   I M P L I E D   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   �  � � � l     �� � ���   � Q K ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE     � � � � �   A R E   D I S C L A I M E D .   I N   N O   E V E N T   S H A L L   T H E   C O P Y R I G H T   H O L D E R   O R   C O N T R I B U T O R S   B E   �  � � � l     �� � ���   � K E LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR     � � � � �   L I A B L E   F O R   A N Y   D I R E C T ,   I N D I R E C T ,   I N C I D E N T A L ,   S P E C I A L ,   E X E M P L A R Y ,   O R   �  � � � l     �� � ���   � L F CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF     � � � � �   C O N S E Q U E N T I A L   D A M A G E S   ( I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   P R O C U R E M E N T   O F   �  � � � l     �� � ���   � P J SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS     � � � � �   S U B S T I T U T E   G O O D S   O R   S E R V I C E S ;   L O S S   O F   U S E ,   D A T A ,   O R   P R O F I T S ;   O R   B U S I N E S S   �  � � � l     �� � ���   � O I INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN     � � � � �   I N T E R R U P T I O N )   H O W E V E R   C A U S E D   A N D   O N   A N Y   T H E O R Y   O F   L I A B I L I T Y ,   W H E T H E R   I N   �  � � � l     �� � ���   � O I CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)     � � � � �   C O N T R A C T ,   S T R I C T   L I A B I L I T Y ,   O R   T O R T   ( I N C L U D I N G   N E G L I G E N C E   O R   O T H E R W I S E )   �  � � � l     �� � ���   � Q K ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE    � � � � �   A R I S I N G   I N   A N Y   W A Y   O U T   O F   T H E   U S E   O F   T H I S   S O F T W A R E ,   E V E N   I F   A D V I S E D   O F   T H E �  � � � l     �� � ���   � "  POSSIBILITY OF SUCH DAMAGE.    � � � � 8   P O S S I B I L I T Y   O F   S U C H   D A M A G E . �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Global vars    � � � �    G l o b a l   v a r s �  � � � p       � � ������ $0 iscurrentpowerac isCurrentPowerAC��   �  � � � p       � � ������ "0 applicationlist applicationList��   �  � � � p       � � ������ 0 userservices userServices��   �  � � � p       � � ������ (0 userservicesplists userServicesPlists��   �  � � � p       � � ������ 0 rootservices rootServices��   �  � � � p       � � ������ (0 rootservicesplists rootServicesPlists��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Initialization    � � � �    I n i t i a l i z a t i o n �  � � � i      � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � k     , � �  � � � l     �� � ���   � ) # ##### CONFIGURATION START ##### --    � � � � F   # # # # #   C O N F I G U R A T I O N   S T A R T   # # # # #   - - �  � � � r      � � � J      � �  � � � m      � � � � �  D r o p b o x �  � � � m     � � � � � $ C r a s h P l a n   m e n u   b a r �  ��� � m     � � � � �  s m c F a n C o n t r o l��   � o      ���� "0 applicationlist applicationList �  � � � r     � � � J    
����   � o      ���� 0 userservices userServices �  � � � r     � � � J    ����   � o      ���� (0 userservicesplists userServicesPlists �  � � � r     � � � J     � �  ��� � m     � � � � � ( c o m . c r a s h p l a n . e n g i n e��   � o      ���� 0 rootservices rootServices �  � � � r     �  � J     �� m     � b / L i b r a r y / L a u n c h D a e m o n s / c o m . c r a s h p l a n . e n g i n e . p l i s t��    o      ���� (0 rootservicesplists rootServicesPlists �  l   ����   ' ! ##### CONFIGURATION END ##### --    �		 B   # # # # #   C O N F I G U R A T I O N   E N D   # # # # #   - - 

 l   ��������  ��  ��    r    & H    $ n   # I    #�������� 0 	ispowerac 	isPowerAC��  ��    f     o      ���� $0 iscurrentpowerac isCurrentPowerAC  l  ' '��������  ��  ��    l  ' '����   j d Below only if run as script directly without export as application and "stay open after run handler    � �   B e l o w   o n l y   i f   r u n   a s   s c r i p t   d i r e c t l y   w i t h o u t   e x p o r t   a s   a p p l i c a t i o n   a n d   " s t a y   o p e n   a f t e r   r u n   h a n d l e r  l  ' '����     repeat     �    r e p e a t     l  ' '��!"��  !  	delay (idle)   " �##  	 d e l a y   ( i d l e )  $%$ l  ' '��&'��  &   end repeat   ' �((    e n d   r e p e a t% )��) I  ' ,������
�� .miscidlenmbr    ��� null��  ��  ��   � *+* l     ��������  ��  ��  + ,-, l     ��./��  .   Main run loop   / �00    M a i n   r u n   l o o p- 121 i    343 I     ������
�� .miscidlenmbr    ��� null��  ��  4 k     B55 676 Z     ?89����8 =    :;: n    <=< I    �������� "0 haspowerchanged hasPowerChanged��  ��  =  f     ; m    ��
�� boovtrue9 k   
 ;>> ?@? r   
 ABA n  
 CDC I    �������� 0 	ispowerac 	isPowerAC��  ��  D  f   
 B o      ���� $0 iscurrentpowerac isCurrentPowerAC@ E��E Z    ;FG����F =   HIH n   JKJ I    �������� 40 shouldreacttopowerchange shouldReactToPowerChange��  ��  K  f    I m    ��
�� boovtrueG k    7LL MNM r    #OPO n   !QRQ I    !�������� 0 	ispowerac 	isPowerAC��  ��  R  f    P o      ���� $0 iscurrentpowerac isCurrentPowerACN S��S Z   $ 7TU��VT =  $ 'WXW o   $ %���� $0 iscurrentpowerac isCurrentPowerACX m   % &��
�� boovtrueU n  * /YZY I   + /������� 0 startservices startServices��  �  Z  f   * +��  V n  2 7[\[ I   3 7�~�}�|�~ 0 stopservices stopServices�}  �|  \  f   2 3��  ��  ��  ��  ��  ��  7 ]�{] L   @ B^^ m   @ A�z�z �{  2 _`_ l     �y�x�w�y  �x  �w  ` aba l     �vcd�v  c   stopServices   d �ee    s t o p S e r v i c e sb fgf l     �u�t�s�u  �t  �s  g hih i    jkj I      �r�q�p�r 0 stopservices stopServices�q  �p  k k     �ll mnm l     �oop�o  o  
 stop apps   p �qq    s t o p   a p p sn rsr X     "t�nut O   vwv I   �m�l�k
�m .aevtquitnull��� ��� null�l  �k  w 4    �jx
�j 
cappx o    �i�i 0 theitem theItem�n 0 theitem theItemu o    �h�h "0 applicationlist applicationLists yzy l  # #�g�f�e�g  �f  �e  z {|{ l  # #�d}~�d  }   stop root services   ~ � &   s t o p   r o o t   s e r v i c e s| ��� r   # &��� m   # $�c�c � o      �b�b 0 counter  � ��� X   ' v��a�� k   7 q�� ��� r   7 @��� I   7 >�`��_�` $0 isservicerunning isServiceRunning� ��� o   8 9�^�^ 0 theitem theItem� ��]� m   9 :�\
�\ boovtrue�]  �_  � o      �[�[ 0 	isrunning 	isRunning� ��� Z   A k���Z�Y� =  A D��� o   A B�X�X 0 	isrunning 	isRunning� m   B C�W
�W boovtrue� k   G g�� ��� r   G M��� n   G K��� 4   H K�V�
�V 
cobj� o   I J�U�U 0 counter  � o   G H�T�T (0 rootservicesplists rootServicesPlists� o      �S�S 	0 plist  � ��� r   N S��� b   N Q��� m   N O�� ��� " l a u n c h c t l   u n l o a d  � o   O P�R�R 	0 plist  � o      �Q�Q 0 cmd  � ��P� Q   T g���O� I  W ^�N��
�N .sysoexecTEXT���     TEXT� o   W X�M�M 0 cmd  � �L��K
�L 
badm� m   Y Z�J
�J boovtrue�K  � R      �I�H�G
�I .ascrerr ****      � ****�H  �G  �O  �P  �Z  �Y  � ��F� r   l q��� [   l o��� o   l m�E�E 0 counter  � m   m n�D�D � o      �C�C 0 counter  �F  �a 0 theitem theItem� o   * +�B�B 0 rootservices rootServices� ��� l  w w�A�@�?�A  �@  �?  � ��� l  w w�>���>  �   stop user services   � ��� &   s t o p   u s e r   s e r v i c e s� ��� r   w z��� m   w x�=�= � o      �<�< 0 counter  � ��;� X   { ���:�� k   � ��� ��� r   � ���� I   � ��9��8�9 $0 isservicerunning isServiceRunning� ��� o   � ��7�7 0 theitem theItem� ��6� m   � ��5
�5 boovfals�6  �8  � o      �4�4 0 	isrunning 	isRunning� ��� Z   � ����3�2� =  � ���� o   � ��1�1 0 	isrunning 	isRunning� m   � ��0
�0 boovtrue� k   � ��� ��� r   � ���� n   � ���� 4   � ��/�
�/ 
cobj� o   � ��.�. 0 counter  � o   � ��-�- (0 userservicesplists userServicesPlists� o      �,�, 	0 plist  � ��� r   � ���� b   � ���� m   � ��� ��� " l a u n c h c t l   u n l o a d  � o   � ��+�+ 	0 plist  � o      �*�* 0 cmd  � ��)� Q   � ����(� I  � ��'��&
�' .sysoexecTEXT���     TEXT� o   � ��%�% 0 cmd  �&  � R      �$�#�"
�$ .ascrerr ****      � ****�#  �"  �(  �)  �3  �2  � ��!� r   � ���� [   � ���� o   � �� �  0 counter  � m   � ��� � o      �� 0 counter  �!  �: 0 theitem theItem� o   ~ �� 0 userservices userServices�;  i ��� l     ����  �  �  � ��� l     ����  �   startServices   � ���    s t a r t S e r v i c e s� ��� l     ����  �  �  � ��� i    ��� I      ���� 0 startservices startServices�  �  � k     ��� ��� l     ����  �  
 stop apps   � ���    s t o p   a p p s� ��� X     "���� O   � � I   ���
� .aevtoappnull  �   � ****�  �    4    �
� 
capp o    �� 0 theitem theItem� 0 theitem theItem� o    �� "0 applicationlist applicationList�  l  # #�
�	��
  �	  �    l  # #��     start root services    � (   s t a r t   r o o t   s e r v i c e s 	
	 r   # & m   # $��  o      �� 0 counter  
  X   ' v� k   7 q  r   7 @ I   7 >��� $0 isservicerunning isServiceRunning  o   8 9�� 0 theitem theItem �  m   9 :��
�� boovtrue�   �   o      ���� 0 	isrunning 	isRunning  Z   A k���� =  A D o   A B���� 0 	isrunning 	isRunning m   B C��
�� boovfals k   G g   !"! r   G M#$# n   G K%&% 4   H K��'
�� 
cobj' o   I J���� 0 counter  & o   G H���� (0 rootservicesplists rootServicesPlists$ o      ���� 	0 plist  " ()( r   N S*+* b   N Q,-, m   N O.. �//  l a u n c h c t l   l o a d  - o   O P���� 	0 plist  + o      ���� 0 cmd  ) 0��0 Q   T g12��1 I  W ^��34
�� .sysoexecTEXT���     TEXT3 o   W X���� 0 cmd  4 ��5��
�� 
badm5 m   Y Z��
�� boovtrue��  2 R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��   6��6 r   l q787 [   l o9:9 o   l m���� 0 counter  : m   m n���� 8 o      ���� 0 counter  ��  � 0 theitem theItem o   * +���� 0 rootservices rootServices ;<; l  w w��������  ��  ��  < =>= l  w w��?@��  ?   start user services   @ �AA (   s t a r t   u s e r   s e r v i c e s> BCB r   w zDED m   w x���� E o      ���� 0 counter  C F��F X   { �G��HG k   � �II JKJ r   � �LML I   � ���N���� $0 isservicerunning isServiceRunningN OPO o   � ����� 0 theitem theItemP Q��Q m   � ���
�� boovfals��  ��  M o      ���� 0 	isrunning 	isRunningK RSR Z   � �TU����T =  � �VWV o   � ����� 0 	isrunning 	isRunningW m   � ���
�� boovfalsU k   � �XX YZY r   � �[\[ n   � �]^] 4   � ���_
�� 
cobj_ o   � ����� 0 counter  ^ o   � ����� (0 userservicesplists userServicesPlists\ o      ���� 	0 plist  Z `a` r   � �bcb b   � �ded m   � �ff �gg  l a u n c h c t l   l o a d  e o   � ����� 	0 plist  c o      ���� 0 cmd  a h��h Q   � �ij��i I  � ���k��
�� .sysoexecTEXT���     TEXTk o   � ����� 0 cmd  ��  j R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��  S l��l r   � �mnm [   � �opo o   � ����� 0 counter  p m   � ����� n o      ���� 0 counter  ��  �� 0 theitem theItemH o   ~ ���� 0 userservices userServices��  � qrq l     ��������  ��  ��  r sts l     ��uv��  u !  shouldReactToPowerChange()   v �ww 6   s h o u l d R e a c t T o P o w e r C h a n g e ( )t xyx l     ��z{��  z      { �||   y }~} l     �����   L F Will display a dialog to the user asking if he wishes to react to the   � ��� �   W i l l   d i s p l a y   a   d i a l o g   t o   t h e   u s e r   a s k i n g   i f   h e   w i s h e s   t o   r e a c t   t o   t h e~ ��� l     ������  �   power changes   � ���    p o w e r   c h a n g e s� ��� i    ��� I      �������� 40 shouldreacttopowerchange shouldReactToPowerChange��  ��  � k     X�� ��� Z     ������ =    ��� o     ���� $0 iscurrentpowerac isCurrentPowerAC� m    ��
�� boovtrue� r    	��� m    �� ���  A C   p o w e r� o      ���� 
0 source  ��  � r    ��� m    �� ���  b a t t e r y� o      ���� 
0 source  � ��� r    ��� b    ��� b    ��� m    �� ���  Y o u   a r e   n o w   o n  � o    ���� 
0 source  � m    �� ��� B .   S t a r t / S t o p   s e r v i c e   a c c o r d i n g l y ?� o      ���� 0 messagetext messageText� ���� Q    X���� k    N�� ��� O   %��� I   $������
�� .miscactvnull��� ��� null��  ��  � m    ��
�� misccura� ��� I  & 8����
�� .sysodisAaleR        TEXT� m   & '�� ��� 0 P o w e r   s o u r c e   h a s   c h a n g e d� ����
�� 
mesS� o   ( )���� 0 messagetext messageText� ����
�� 
btns� J   * .�� ��� m   * +�� ���  N o� ���� m   + ,�� ���  Y e s��  � ����
�� 
dflt� m   / 0�� ���  N o� �����
�� 
givu� m   1 2���� <��  � ���� Z   9 N������ =   9 D��� n   9 @��� 1   < @��
�� 
bhit� 1   9 <��
�� 
rslt� m   @ C�� ���  Y E S� L   G I�� m   G H��
�� boovtrue��  � L   L N�� m   L M��
�� boovfals��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg��  � L   V X�� m   V W��
�� boovfals��  � ��� l     ��������  ��  ��  � ��� l     ������  �   hasPowerChanged()   � ��� $   h a s P o w e r C h a n g e d ( )� ��� l     ��������  ��  ��  � ��� l     ������  � 6 0 returns true if power has changed, false if not   � ��� `   r e t u r n s   t r u e   i f   p o w e r   h a s   c h a n g e d ,   f a l s e   i f   n o t� ��� i    ��� I      �������� "0 haspowerchanged hasPowerChanged��  ��  � Z     ������ =    ��� o     ���� $0 iscurrentpowerac isCurrentPowerAC� n   ��� I    �������� 0 	ispowerac 	isPowerAC��  ��  �  f    � L   
 �� m   
 ��
�� boovfals��  � L    �� m    ��
�� boovtrue� ��� l     ��������  ��  ��  � ��� l     ������  � * $ isServiceRunning(serviceName, root)   � ��� H   i s S e r v i c e R u n n i n g ( s e r v i c e N a m e ,   r o o t )� ��� l     ������  �      � ���   � ��� l     ����  � D > serviceName - The name of the service which should be checked   � �   |   s e r v i c e N a m e   -   T h e   n a m e   o f   t h e   s e r v i c e   w h i c h   s h o u l d   b e   c h e c k e d�  l     �~�~   M G root - True if this is a root service, false if this is a user service    � �   r o o t   -   T r u e   i f   t h i s   i s   a   r o o t   s e r v i c e ,   f a l s e   i f   t h i s   i s   a   u s e r   s e r v i c e  l     �}	�}        	 �

     l     �|�|   , & Returns true if running, false if not    � L   R e t u r n s   t r u e   i f   r u n n i n g ,   f a l s e   i f   n o t  i     I      �{�z�{ $0 isservicerunning isServiceRunning  o      �y�y 0 servicename serviceName �x o      �w�w 0 root  �x  �z   k     ^  l     �v�v   ? 9 This is a fix, otherwise string compare below won't work    � r   T h i s   i s   a   f i x ,   o t h e r w i s e   s t r i n g   c o m p a r e   b e l o w   w o n ' t   w o r k  r     	 !  I    �u"�t
�u .sysoexecTEXT���     TEXT" b     #$# m     %% �&& 
 e c h o  $ o    �s�s 0 servicename serviceName�t  ! o      �r�r 0 servicename serviceName '(' l  
 
�q)*�q  )   fix end   * �++    f i x   e n d( ,-, l  
 
�p�o�n�p  �o  �n  - ./. r   
 010 b   
 232 b   
 454 m   
 66 �77 4 l a u n c h c t l   l i s t   |   g r e p   - o   "5 o    �m�m 0 servicename serviceName3 m    88 �99  "1 o      �l�l 0 cmd  / :;: l   �k<=�k  <   log "cmd: " & cmd   = �>> $   l o g   " c m d :   "   &   c m d; ?@? r    ABA m    �j
�j boovfalsB o      �i�i 
0 active  @ CDC Z    KEF�hGE =   HIH o    �g�g 0 root  I m    �f
�f boovtrueF Q    3JKLJ r    (MNM I   &�eOP
�e .sysoexecTEXT���     TEXTO o     �d�d 0 cmd  P �cQ�b
�c 
badmQ m   ! "�a
�a boovtrue�b  N o      �`�` 0 greppedname greppedNameK R      �_R�^
�_ .ascrerr ****      � ****R o      �]�] 0 errmsg errMsg�^  L r   0 3STS m   0 1UU �VV  T o      �\�\ 0 greppedname greppedName�h  G Q   6 KWXYW r   9 @Z[Z I  9 >�[\�Z
�[ .sysoexecTEXT���     TEXT\ o   9 :�Y�Y 0 cmd  �Z  [ o      �X�X 0 greppedname greppedNameX R      �W]�V
�W .ascrerr ****      � ****] o      �U�U 0 errmsg errMsg�V  Y r   H K^_^ m   H I`` �aa  _ o      �T�T 0 greppedname greppedNameD bcb Z   L [de�Sfd =  L Oghg o   L M�R�R 0 greppedname greppedNameh o   M N�Q�Q 0 servicename serviceNamee r   R Uiji m   R S�P
�P boovtruej o      �O�O 
0 active  �S  f r   X [klk m   X Y�N
�N boovfalsl o      �M�M 
0 active  c m�Lm L   \ ^nn o   \ ]�K�K 
0 active  �L   opo l     �J�I�H�J  �I  �H  p qrq l     �Gst�G  s   isPowerAC()   t �uu    i s P o w e r A C ( )r vwv l     �Fxy�F  x      y �zz   w {|{ l     �E}~�E  } + % Returns true if AC, false if battery   ~ � J   R e t u r n s   t r u e   i f   A C ,   f a l s e   i f   b a t t e r y| ��� i    ��� I      �D�C�B�D 0 	ispowerac 	isPowerAC�C  �B  � k     �� ��� r     ��� I    �A��@
�A .sysoexecTEXT���     TEXT� m     �� ��� $ p m s e t   - g   |   g r e p   A C�@  � o      �?�? 	0 power  � ��� r    ��� n    ��� 4  	 �>�
�> 
cha � m   
 �=�=��� o    	�<�< 	0 power  � o      �;�; 	0 power  � ��� l   �:�9�8�:  �9  �8  � ��7� Z    ���6�� =    ��� o    �5�5 	0 power  � m    �� ���  *� L    �� m    �4
�4 boovtrue�6  � L    �� m    �3
�3 boovfals�7  � ��� l     �2�1�0�2  �1  �0  � ��/� l     �.�-�,�.  �-  �,  �/       
�+����������+  � �*�)�(�'�&�%�$�#
�* .aevtoappnull  �   � ****
�) .miscidlenmbr    ��� null�( 0 stopservices stopServices�' 0 startservices startServices�& 40 shouldreacttopowerchange shouldReactToPowerChange�% "0 haspowerchanged hasPowerChanged�$ $0 isservicerunning isServiceRunning�# 0 	ispowerac 	isPowerAC� �" ��!� ���
�" .aevtoappnull  �   � ****�!  �   �  �  � � ���� ������� "0 applicationlist applicationList� 0 userservices userServices� (0 userservicesplists userServicesPlists� 0 rootservices rootServices� (0 rootservicesplists rootServicesPlists� 0 	ispowerac 	isPowerAC� $0 iscurrentpowerac isCurrentPowerAC
� .miscidlenmbr    ��� null� -���mvE�OjvE�OjvE�O�kvE�O�kvE�O)j+ 
E�O*j � �4�����
� .miscidlenmbr    ��� null�  �  �  � �������� "0 haspowerchanged hasPowerChanged� 0 	ispowerac 	isPowerAC� $0 iscurrentpowerac isCurrentPowerAC� 40 shouldreacttopowerchange shouldReactToPowerChange� 0 startservices startServices� 0 stopservices stopServices� � C)j+  e  6)j+ E�O)j+ e   )j+ E�O�e  
)j+ Y )j+ Y hY hO�� �k�
�	���� 0 stopservices stopServices�
  �	  � ������ 0 theitem theItem� 0 counter  � 0 	isrunning 	isRunning� 	0 plist  � 0 cmd  � ��� ��������������������������� "0 applicationlist applicationList
� 
kocl
�  
cobj
�� .corecnte****       ****
�� 
capp
�� .aevtquitnull��� ��� null�� 0 rootservices rootServices�� $0 isservicerunning isServiceRunning�� (0 rootservicesplists rootServicesPlists
�� 
badm
�� .sysoexecTEXT���     TEXT��  ��  �� 0 userservices userServices�� (0 userservicesplists userServicesPlists� � !�[��l kh  *�/ *j U[OY��OkE�O N�[��l kh  *�el+ E�O�e  %��/E�O�%E�O ��el W X  hY hO�kE�[OY��OkE�O N�[��l kh  *�fl+ E�O�e  %��/E�Oa �%E�O 
�j W X  hY hO�kE�[OY��� ������������� 0 startservices startServices��  ��  � ������������ 0 theitem theItem�� 0 counter  �� 0 	isrunning 	isRunning�� 	0 plist  �� 0 cmd  � ������������������.������������f�� "0 applicationlist applicationList
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
capp
�� .aevtoappnull  �   � ****�� 0 rootservices rootServices�� $0 isservicerunning isServiceRunning�� (0 rootservicesplists rootServicesPlists
�� 
badm
�� .sysoexecTEXT���     TEXT��  ��  �� 0 userservices userServices�� (0 userservicesplists userServicesPlists�� � !�[��l kh  *�/ *j U[OY��OkE�O N�[��l kh  *�el+ E�O�f  %��/E�O�%E�O ��el W X  hY hO�kE�[OY��OkE�O N�[��l kh  *�fl+ E�O�f  %��/E�Oa �%E�O 
�j W X  hY hO�kE�[OY��� ������������� 40 shouldreacttopowerchange shouldReactToPowerChange��  ��  � �������� 
0 source  �� 0 messagetext messageText�� 0 errmsg errMsg� ��������������������������������������� $0 iscurrentpowerac isCurrentPowerAC
�� misccura
�� .miscactvnull��� ��� null
�� 
mesS
�� 
btns
�� 
dflt
�� 
givu�� <�� 
�� .sysodisAaleR        TEXT
�� 
rslt
�� 
bhit�� 0 errmsg errMsg��  �� Y�e  �E�Y �E�O�%�%E�O 8� *j UO�����lv����a  O_ a ,a   eY fW 	X  f� ������������� "0 haspowerchanged hasPowerChanged��  ��  �  � ������ $0 iscurrentpowerac isCurrentPowerAC�� 0 	ispowerac 	isPowerAC�� �)j+   fY e� ������������ $0 isservicerunning isServiceRunning�� ����� �  ������ 0 servicename serviceName�� 0 root  ��  � �������������� 0 servicename serviceName�� 0 root  �� 0 cmd  �� 
0 active  �� 0 greppedname greppedName�� 0 errmsg errMsg� 	%��68������U`
�� .sysoexecTEXT���     TEXT
�� 
badm�� 0 errmsg errMsg��  �� _�%j E�O�%�%E�OfE�O�e   ��el E�W 
X  �E�Y  �j E�W 
X  �E�O��  eE�Y fE�O�� ������������� 0 	ispowerac 	isPowerAC��  ��  � ���� 	0 power  � ������
�� .sysoexecTEXT���     TEXT
�� 
cha �� �j E�O��i/E�O��  eY f ascr  ��ޭ