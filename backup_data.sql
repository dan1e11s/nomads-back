--
-- PostgreSQL database dump
--

-- Dumped from database version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: account_user; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.account_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, phone) FROM stdin;
1	pbkdf2_sha256$600000$hFl053w8Ku8BB38rSEPFs2$q5TvDt5eatoVhQychUuNg+33fBeJ4fXDTNBSqu/1738=	2023-10-18 13:08:32.106162+03	t	admin			admin@gmail.com	t	t	2023-09-26 12:11:22.625296+03	\N
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: account_user_groups; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.account_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	tours	category
7	tours	prices
8	tours	region
9	tours	tour
10	tours	tourreviews
11	tours	tourrequest
12	tours	slider
13	tours	route
14	tours	images
15	tours	createowntour
16	account	user
17	clients	faq
18	clients	feedback
19	clients	sitereviews
20	clients	requests
21	clients	information
22	clients	answer
23	car_rent	brand
24	car_rent	car
25	car_rent	cartype
26	car_rent	prices
27	car_rent	images
28	car_rent	carrentalrequest
29	lead	leadtraveler
30	lead	travelers
31	main	faq
32	main	feedback
33	main	sitereviews
34	main	requests
35	main	information
36	main	answer
37	main	accommodation
38	main	meals
39	main	transport
40	main	createowntourrec
41	main	categories
42	main	createowntour
43	main	articlecats
44	main	articles
45	main	articleimages
46	main	galleryimages
47	main	gallery
48	main	languages
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add Категория	6	add_category
22	Can change Категория	6	change_category
23	Can delete Категория	6	delete_category
24	Can view Категория	6	view_category
25	Can add Цена	7	add_prices
26	Can change Цена	7	change_prices
27	Can delete Цена	7	delete_prices
28	Can view Цена	7	view_prices
29	Can add Область	8	add_region
30	Can change Область	8	change_region
31	Can delete Область	8	delete_region
32	Can view Область	8	view_region
33	Can add Тур	9	add_tour
34	Can change Тур	9	change_tour
35	Can delete Тур	9	delete_tour
36	Can view Тур	9	view_tour
37	Can add Отзыв	10	add_tourreviews
38	Can change Отзыв	10	change_tourreviews
39	Can delete Отзыв	10	delete_tourreviews
40	Can view Отзыв	10	view_tourreviews
41	Can add Запрос на тур	11	add_tourrequest
42	Can change Запрос на тур	11	change_tourrequest
43	Can delete Запрос на тур	11	delete_tourrequest
44	Can view Запрос на тур	11	view_tourrequest
45	Can add Слайдер	12	add_slider
46	Can change Слайдер	12	change_slider
47	Can delete Слайдер	12	delete_slider
48	Can view Слайдер	12	view_slider
49	Can add Маршрут	13	add_route
50	Can change Маршрут	13	change_route
51	Can delete Маршрут	13	delete_route
52	Can view Маршрут	13	view_route
53	Can add images	14	add_images
54	Can change images	14	change_images
55	Can delete images	14	delete_images
56	Can view images	14	view_images
57	Can add Создай свой тур	15	add_createowntour
58	Can change Создай свой тур	15	change_createowntour
59	Can delete Создай свой тур	15	delete_createowntour
60	Can view Создай свой тур	15	view_createowntour
61	Can add Пользователь	16	add_user
62	Can change Пользователь	16	change_user
63	Can delete Пользователь	16	delete_user
64	Can view Пользователь	16	view_user
65	Can add FAQ	17	add_faq
66	Can change FAQ	17	change_faq
67	Can delete FAQ	17	delete_faq
68	Can view FAQ	17	view_faq
69	Can add Обратная связь	18	add_feedback
70	Can change Обратная связь	18	change_feedback
71	Can delete Обратная связь	18	delete_feedback
72	Can view Обратная связь	18	view_feedback
73	Can add Впечатления	19	add_sitereviews
74	Can change Впечатления	19	change_sitereviews
75	Can delete Впечатления	19	delete_sitereviews
76	Can view Впечатления	19	view_sitereviews
77	Can add Заявка	20	add_requests
78	Can change Заявка	20	change_requests
79	Can delete Заявка	20	delete_requests
80	Can view Заявка	20	view_requests
81	Can add Информация о клиенте	21	add_information
82	Can change Информация о клиенте	21	change_information
83	Can delete Информация о клиенте	21	delete_information
84	Can view Информация о клиенте	21	view_information
85	Can add Вопрос и ответет	22	add_answer
86	Can change Вопрос и ответет	22	change_answer
87	Can delete Вопрос и ответет	22	delete_answer
88	Can view Вопрос и ответет	22	view_answer
89	Can add Марка авто	23	add_brand
90	Can change Марка авто	23	change_brand
91	Can delete Марка авто	23	delete_brand
92	Can view Марка авто	23	view_brand
93	Can add Авто	24	add_car
94	Can change Авто	24	change_car
95	Can delete Авто	24	delete_car
96	Can view Авто	24	view_car
97	Can add Тип авто	25	add_cartype
98	Can change Тип авто	25	change_cartype
99	Can delete Тип авто	25	delete_cartype
100	Can view Тип авто	25	view_cartype
101	Can add Цена аренды	26	add_prices
102	Can change Цена аренды	26	change_prices
103	Can delete Цена аренды	26	delete_prices
104	Can view Цена аренды	26	view_prices
105	Can add Изображение	27	add_images
106	Can change Изображение	27	change_images
107	Can delete Изображение	27	delete_images
108	Can view Изображение	27	view_images
109	Can add Заявка на авто	28	add_carrentalrequest
110	Can change Заявка на авто	28	change_carrentalrequest
111	Can delete Заявка на авто	28	delete_carrentalrequest
112	Can view Заявка на авто	28	view_carrentalrequest
113	Can add Лид	29	add_leadtraveler
114	Can change Лид	29	change_leadtraveler
115	Can delete Лид	29	delete_leadtraveler
116	Can view Лид	29	view_leadtraveler
117	Can add Путешественник	30	add_travelers
118	Can change Путешественник	30	change_travelers
119	Can delete Путешественник	30	delete_travelers
120	Can view Путешественник	30	view_travelers
121	Can add FAQ	31	add_faq
122	Can change FAQ	31	change_faq
123	Can delete FAQ	31	delete_faq
124	Can view FAQ	31	view_faq
125	Can add Обратная связь	32	add_feedback
126	Can change Обратная связь	32	change_feedback
127	Can delete Обратная связь	32	delete_feedback
128	Can view Обратная связь	32	view_feedback
129	Can add Впечатления	33	add_sitereviews
130	Can change Впечатления	33	change_sitereviews
131	Can delete Впечатления	33	delete_sitereviews
132	Can view Впечатления	33	view_sitereviews
133	Can add Заявка	34	add_requests
134	Can change Заявка	34	change_requests
135	Can delete Заявка	34	delete_requests
136	Can view Заявка	34	view_requests
137	Can add Информация о клиенте	35	add_information
138	Can change Информация о клиенте	35	change_information
139	Can delete Информация о клиенте	35	delete_information
140	Can view Информация о клиенте	35	view_information
141	Can add Вопрос и ответет	36	add_answer
142	Can change Вопрос и ответет	36	change_answer
143	Can delete Вопрос и ответет	36	delete_answer
144	Can view Вопрос и ответет	36	view_answer
145	Can add Размещение	37	add_accommodation
146	Can change Размещение	37	change_accommodation
147	Can delete Размещение	37	delete_accommodation
148	Can view Размещение	37	view_accommodation
149	Can add Питание	38	add_meals
150	Can change Питание	38	change_meals
151	Can delete Питание	38	delete_meals
152	Can view Питание	38	view_meals
153	Can add Транспорт	39	add_transport
154	Can change Транспорт	39	change_transport
155	Can delete Транспорт	39	delete_transport
156	Can view Транспорт	39	view_transport
157	Can add Рекомендация	40	add_createowntourrec
158	Can change Рекомендация	40	change_createowntourrec
159	Can delete Рекомендация	40	delete_createowntourrec
160	Can view Рекомендация	40	view_createowntourrec
161	Can add categories	41	add_categories
162	Can change categories	41	change_categories
163	Can delete categories	41	delete_categories
164	Can view categories	41	view_categories
165	Can add Создай свой тур	42	add_createowntour
166	Can change Создай свой тур	42	change_createowntour
167	Can delete Создай свой тур	42	delete_createowntour
168	Can view Создай свой тур	42	view_createowntour
169	Can add Категория статьи	43	add_articlecats
170	Can change Категория статьи	43	change_articlecats
171	Can delete Категория статьи	43	delete_articlecats
172	Can view Категория статьи	43	view_articlecats
173	Can add Статья	44	add_articles
174	Can change Статья	44	change_articles
175	Can delete Статья	44	delete_articles
176	Can view Статья	44	view_articles
177	Can add Изображение	45	add_articleimages
178	Can change Изображение	45	change_articleimages
179	Can delete Изображение	45	delete_articleimages
180	Can view Изображение	45	view_articleimages
181	Can add Галерея	46	add_galleryimages
182	Can change Галерея	46	change_galleryimages
183	Can delete Галерея	46	delete_galleryimages
184	Can view Галерея	46	view_galleryimages
185	Can add Галерея	47	add_gallery
186	Can change Галерея	47	change_gallery
187	Can delete Галерея	47	delete_gallery
188	Can view Галерея	47	view_gallery
189	Can add Язык	48	add_languages
190	Can change Язык	48	change_languages
191	Can delete Язык	48	delete_languages
192	Can view Язык	48	view_languages
\.


--
-- Data for Name: account_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.account_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: car_rent_brand; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.car_rent_brand (id, name) FROM stdin;
1	BMW
2	Bentley
3	Bugatti
4	Acura
5	Alfa Romeo
6	Audi A8
7	Chevrolet Spark
8	Tayota
9	Mercedes
\.


--
-- Data for Name: car_rent_cartype; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.car_rent_cartype (id, name, lang) FROM stdin;
2	Сomfort	en
1	Business	en
4	All cars	en
\.


--
-- Data for Name: car_rent_car; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.car_rent_car (id, model, seats, year, rating, status, proccess, features, conditioner, economy, rear_view, bluetooth, brand_id, type_id, lang) FROM stdin;
9	M5	4	2020	5	1	<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>	<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>	t	t	t	t	1	2	en
\.


--
-- Data for Name: car_rent_carrentalrequest; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.car_rent_carrentalrequest (id, first_name, last_name, email, phone, status, comment, car_id, datefrom, dateto) FROM stdin;
181	salam	salam	kursant@gmail.com	92929929299	2	ksncjdwkobcfebhr	9	2023-10-14	2023-10-28
\.


--
-- Data for Name: car_rent_images; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.car_rent_images (id, img, car_id) FROM stdin;
11	car_images/60c1da12de230d550649af52.jfif	9
\.


--
-- Data for Name: car_rent_prices; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.car_rent_prices (id, days, price, car_id) FROM stdin;
9	1-3	800	9
\.


--
-- Data for Name: clients_faq; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.clients_faq (id, name) FROM stdin;
\.


--
-- Data for Name: clients_answer; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.clients_answer (id, question, answer, faq_id) FROM stdin;
\.


--
-- Data for Name: clients_feedback; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.clients_feedback (id, name, email, phone, comment, status, created_at) FROM stdin;
\.


--
-- Data for Name: tours_category; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.tours_category (id, name, img, lang) FROM stdin;
22	Trekking tours	cat_images/imgonline-com-ua-Resize-FrY1Dbp155zEbwgG.jpg	en
23	Guaranteed  tours	cat_images/imgonline-com-ua-Compressed-JRfqQ5M3sm.jpg	en
25	Central Asia tours	cat_images/imgonline-com-ua-Resize-gmmfEEmcrzY.jpg	en
24	Combined many days tour	cat_images/imgonline-com-ua-Resize-jPX0rZBCM5of.jpg	en
21	Horse riding tours	cat_images/imgonline-com-ua-Resize-Es7QHjtz2hgEmb.jpg	en
\.


--
-- Data for Name: tours_tour; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.tours_tour (id, title, type, duration, description, included, excluded, top, views, cat_id, youtube_link, short_desc, lang, price_for) FROM stdin;
15	Horseback riding in the Chon-Kemin gorge – Shamsi Valley. 6 days tour	1	6	<p><strong>Horse riding tour to Chon-kemin Valley. Starting from mid july till September 2024</strong></p><p><strong>Group size min 2-15 </strong></p><p><strong>Individual dates are also available on request</strong></p><p>Horse riding tour to Chon-kemin Valley is a wonderful excursion that does not take too many days but gives you a lot of positive emotions. You can take amazing photos of Kyrgyz nature, enjoy its beauty, breathe in the fresh mountain air and feel like a nomad traveling for kilometers through the mountains and valleys on the back of a faithful horse.</p><p>Shamsi Valley is only a few hours drive from the capital, but it is enough to completely get away from civilization.Unforgettable adventures await you: horseback riding, overnight stays in tents, forest trips, tea by the fire with mountain medicinal herbs and clear starry skies that city people only dream about. This tour is suitable for both beginners, families with children and advanced hikers.</p>	<ul>\r\n\t<li>Transport according to the program</li>\r\n\t<li>Accommodation&nbsp; by the program</li>\r\n\t<li>Meals - full board except dinner on the 3rd day</li>\r\n\t<li>Excursion to the Burana Tower</li>\r\n\t<li>Horse rental</li>\r\n\t<li>Experienced horse guide ( 1 for group, but if you need extra guide to hold your horse and walk on food with you, is available for extra pay)</li>\r\n\t<li>English speaking ( or other language depending on request) guide whole tour.</li>\r\n\t<li>Chef and cooking</li>\r\n</ul><p>&nbsp;</p><p>Accommodation:</p><p>Tents &ndash; 3 nights (2-4 people in 1 tent)</p><p>Guesthouse &ndash; 2 nights (twin room)</p><p>3-4 star hotel in Bishkek &ndash; 1 night</p><p>&nbsp;</p><p><strong>Price</strong></p><p><strong>2 person &ndash; &nbsp;1755 usd dol per person</strong></p><p><strong>3 person &ndash; &nbsp;1390 usd doll per person</strong></p><p><strong>Single supply 120 usd dol ( except staying in tents)</strong></p><p><strong>There are discounts for groups</strong></p><p>&nbsp;</p>	<p>&bull;&nbsp;&nbsp; &nbsp; Early arrival night in Bishkek;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Single supply<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Visa cost;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Personal travel insurance;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Flight tickets;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Alcohol and soft drinks;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Folklore show in Bishkek.<br />\r\n&nbsp;</p>	t	29	21	\N	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.	en	2024
17	Horseback riding in the Tian-shan Mountains 3 days tour	1	3	<p><strong>Horseback riding in the Tian-shan Mountains 3 days tour.&nbsp;From july till the end of August 2024-25</strong></p><p><strong>group size min 2 up to 16 persons</strong></p><p><strong>Individual dates are also available.</strong></p><p><strong>(Journey to Shamsi Gorge)</strong></p><p>If you are tired of being at home and want to escape the gray routine, but don&#39;t want to go far or spend too much time in the car, this tour is for you. Not only will you see the beauty of the Kyrgyzstan mountains, colorful landscapes and rugged mountain streams, but you can also experience the medicinal benefits of hippotherapy (contact with horses). Shamsi Valley is only a few hours drive from the capital, but it is enough to completely get away from civilization.</p><p>Unforgettable adventures await you: horseback riding, overnight stays in tents, forest trips, tea by the fire with mountain medicinal herbs and clear starry skies that city people only dream about. This tour is suitable for both beginners, families with children and advanced hikers.</p>	<p>WHAT&#39;S INCLUDED:</p><ul>\r\n\t<li>Transport according to the program</li>\r\n\t<li>Accommodation &nbsp;by the program</li>\r\n\t<li>Meals - full board except dinner on the 3rd day</li>\r\n\t<li>Excursion to the Burana Tower</li>\r\n\t<li>Horse rental for 3 days</li>\r\n\t<li>Experienced horse guide ( 1 for group, but if you need extra guide to hold your horse and walkon food with you, is available for extra pay)</li>\r\n\t<li>English speaking guide whole tour.</li>\r\n\t<li>Chef and cooking</li>\r\n</ul><p style="margin-left:48px">&nbsp;</p><p style="margin-left:48px">Accommodation:</p><p style="margin-left:48px">Tents &ndash; 2 nights (2-4 people in 1 tent)</p><p style="margin-left:48px">3-4 star hotel in Bishkek &ndash; 1 night</p><p style="margin-left:48px">&nbsp;</p><p style="margin-left:48px">Price</p><p style="margin-left:48px">2 person &ndash; &nbsp;1063 usd dol per person</p><p style="margin-left:48px">3 person &ndash; &nbsp;855 usd doll per person</p><p style="margin-left:48px">There are discounts for groups</p>	<p>&bull;&nbsp;&nbsp; &nbsp; Early arrival night in Bishkek;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Single supply<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Visa cost<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Personal travel insurance;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Flight tickets;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Alcohol and soft drinks;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Folklore show in Bishkek.<br />\r\n&nbsp;</p>	t	28	21	\N		en	2024
21	Trekking 1: Ala-Archa National Park. 4 Days | Bishkek, Ala Archa. Group size 2-10  start from mid may till September 2024-25	2	4	<p><strong>4 Days&nbsp;| Bishkek, Ala Archa.&nbsp;Group size 2-10&nbsp; start from mid may till September 2024-25</strong></p><p><strong>individual days are available on request</strong></p><p>The 4-day trekking (hiking) tour-2 in Kyrgyzstan is a satisfying journey into the mountains through the most beautiful parts of Ala Archa national park. The hiking route passes through coniferous forests, alpine meadows, waterfalls and glaciers. You can enjoy the scenery, but the peak of excitement awaits you at the summit of peak Uchitel. The tour also works well considering that the journey from Bishkek to Ala Archa National Park takes less than an hour.<strong> </strong></p><p><strong>Difficulty level:</strong>&nbsp;There are no technical difficulties on the trekking route, but the tourists should be in good form as they will walk around 3-6 hours a day and will go over the pass (4500 m).</p><p><strong>Recommended list of personal items:</strong>&nbsp; a coat, warm clothes, tracking-boots, sleeping bag, mat, rucksack, flash light, your own First Aid Kit and sunglasses.</p>	<p>Accommodation</p><p>Meals full board</p><p>All transfers</p><p>Mineral water</p><p>Sightseeing tour program in all cities according to the program;</p><p>Entrance fees to tourist attractions according to the program;</p><p>Rental of utensils, tents and mats;</p><p>Porter support Please note that porters can carry a maximum of 7 kg per tourist;</p><p>Chef service</p><p>&nbsp;</p><p><strong>Accommodation</strong></p><p><strong>Bishkek</strong>&nbsp;- 2 nights&nbsp; (twin room)</p><p>B hotel &nbsp;/ Bridges<br />\r\n&nbsp;</p><p><strong>Trek</strong>&nbsp;- 2 nights</p><p>Yurt (4 people in one yurt)<br />\r\n&nbsp;</p><p><strong>Price&nbsp; </strong></p><p><strong>Price will be giving,&nbsp; depending on request ( quantity of tourist, date, etc)</strong></p><p>&nbsp;</p>	<p>&bull;&nbsp;&nbsp; &nbsp; Early arrival night in Bishkek;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Single supply<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Visa cost;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Personal travel insurance;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Flight tickets;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Alcohol and soft drinks;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Folklore show in Bishkek.<br />\r\n&nbsp;</p>	f	45	22	\N	•\t Early arrival night in Bishkek;\r\n•\tSingle tent supplement;\r\n•\tVisa cost;\r\n•\tFull board;\r\n•\tPersonal travel insurance;\r\n•\tFlight tickets;\r\n•\tAlcohol and soft drinks;	en	2024
20	4 days tour Around Issyk Kul’s fairytale	1	4	<p><strong>Group size 2-16 people. All year around. Individual dates are available on request</strong></p><p><strong>Description</strong></p><p>Around the peri Issyk-Kul Lake to experience the nature and culture of Kyrgyzstan in a short period of 4 days. If you are very busy, this tour is for you.</p><p>Highlights:</p><p>&nbsp;</p><ul>\r\n\t<li>Sunbathing at Lake Isik-kul</li>\r\n\t<li>The picture of the Scythian stone - Petroglyph</li>\r\n\t<li>The ruins of the Silk Road town of Balasagin and the Burana Tower</li>\r\n\t<li>The Soviet Outpost town Karakol and its uniqueness</li>\r\n\t<li>Jety&nbsp; Oguz and the Waterfall of &quot;A Girl&#39;s Tears&quot;</li>\r\n\t<li>Skaska Canyon (fairy tale).</li>\r\n</ul>	<p><strong>Accommodation</strong></p><ul>\r\n\t<li>Hotel in Bishkek &ndash; 2 nights in 3-4 star hotel (twin room)</li>\r\n\t<li>Guesthouse in Karakol &ndash; 1 night (twin)</li>\r\n\t<li>Yurt camp &ndash; 1 night (2-4 persons in 1 yurt)</li>\r\n</ul><p style="margin-left:48px"><strong>The cost includes:</strong></p><ul>\r\n\t<li>Accommodation</li>\r\n\t<li>Entrance &nbsp;fees</li>\r\n\t<li>Meal-Full board</li>\r\n\t<li>English speaking guide</li>\r\n\t<li>Transport from Bishkek&nbsp; to Bishkek</li>\r\n\t<li>Mineral water(1 l per person per day)</li>\r\n\t<li>Horse rent</li>\r\n\t<li>Eagle hunting show</li>\r\n\t<li>Yurt building show.</li>\r\n</ul><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>Price &nbsp;per person</strong></p><p><strong>2 persons-1240 usd dol per person</strong></p><p><strong>3 persons- 900 usd dol per person</strong></p><p><strong>Discount for groups is avaliable</strong></p>	<p>&bull;&nbsp;&nbsp; &nbsp; Early arrival night in Bishkek;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Single tent supplement;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Visa cost;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Personal travel insurance;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Flight tickets;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Alcohol and soft drinks;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Folklore show in Bishkek.<br />\r\n&nbsp;</p>	t	14	24	\N		en	2024
27	Altyn-Arashan 6 days tour	1	6	<p>Altyn-Arashan 5 days tour.&nbsp;Group size min 2-15 max Starts from June till beginning September 2024</p><p><strong>Individual dates are available on request</strong></p><p>&nbsp;</p><p>Altyn-Arashan (translated as &quot;Golden Spring&quot;) is a high&mdash;altitude canyon in the eastern part of the Terskey-Ala-Too ridge near the city of Karakol. This gorge is one of the most popular attractions of Kyrgyzstan with its unique nature, hot springs in the valley, endless spruce forests and magnificent views. The Altin-Alashan hot springs are also widely known. They are located at a record altitude of 2,600 meters and have a healing effect due to the content of radon and hydrogen sulfide in the water, maintaining a high temperature of 35 degrees for radon sources and 41 degrees for hydrogen sulfide sources all year round. Some spas have indoor pools, while others are still &quot;wild&quot; in hollow stone baths and caves.</p><p>&nbsp;</p>	<p>Accommodation:<br />\r\nBishkek &ndash; 1 nights in 3-4 star hotel ( twin room)&nbsp;<br />\r\nGuesthouse &ndash; 4 nights (twin room)<br />\r\nYurt camp- 1 night (2-4 people in 1 yurt)</p><p><strong>Price per person<br />\r\n2 people- 1685 usd doll per person<br />\r\n3 people &ndash; 1300 usd per person<br />\r\nThere&rsquo;s discount for groups</strong></p><p>&nbsp;</p><ul>\r\n\t<li>Accommodation</li>\r\n\t<li>&nbsp;English-speaking guide;</li>\r\n\t<li>Meals &ndash; full board</li>\r\n\t<li>Entrance l fees per the itinerary;</li>\r\n\t<li>Transport (type of vehicle depends on the group size);</li>\r\n\t<li>Bottled drinking water (1 litre per person per day);</li>\r\n\t<li>Horse rent</li>\r\n</ul>	<ul>\r\n\t<li>&nbsp;<span style="color:#4f5d6e">Early arrival night in Bishkek;</span></li>\r\n\t<li><span style="color:#4f5d6e">Single tent supplement;</span></li>\r\n\t<li><span style="color:#4f5d6e">Visa cost;</span></li>\r\n\t<li><span style="color:#4f5d6e">Personal travel insurance;</span></li>\r\n\t<li><span style="color:#4f5d6e">Flight tickets;</span></li>\r\n\t<li><span style="color:#4f5d6e">Alcohol and soft drinks;</span></li>\r\n</ul>	f	9	22	\N		en	2024
29	Mountains and Lakes of Tian Shan Trekking Tour 2024-2025 years  from june 15th till august 15th	2	11	<p><strong><em>11 Days&nbsp;| Bishkek, Son Kul Lake, Karakol, Karakol Gorge, Ala-Kul Lake, Altyn Arashan Gorge, Cholpon-Ata</em></strong></p><p><strong><em>Individual dates are available on request</em></strong></p><p>This tour is held in the summer period.</p><p>Tien Shan Mountains and Lakes&quot; tour is a hike to Karakol Peak, the highest peak of Terskei Ala-Too &nbsp;of Tien Shan Mountains. Along the way you will admire picturesque lakes and valleys, relax in natural hot springs and get acquainted with authentic Kyrgyz culture in the area of Lake Issyk-Kul, one of the largest mountain lakes in the world.</p><p>Timing and Cost.<br />\r\n<strong>Single occupancy supplement US$ 280<br />\r\n2300 usd $ per person. Min 3 tourist required.<br />\r\nGroup size: 3-15 people.&nbsp;</strong><br />\r\n&nbsp;</p>	<p>Accommodation: double/twin rooms in hotels; 11 nights in tents (in yurt camps - 4 per yurt);</p><p>Meals: 3 meals a day, including cooking on trekking days;</p><p>Transfer from arrival to departure</p><p>English speaking guide / trekking guide (walking part only)</p><p>Porter services (trekking bags up to 12 kg; above 12 kg requires USD 12 per kg);</p><p>Bottled drinking water (1 liter per person per day) and boiled water (please bring your own flask) during the trek;</p><p>Entrance and park fees during the trek.</p><p>Special military vehicle for transportation between Karakol Gorge and Altyn Alashan Gorge;</p><p>Fee for bathing in hot springs in Altyn Alashan.</p><p>Please note that itineraries and prices are subject to change due to airline and train schedule changes, currency fluctuations and other unforeseen circumstances.</p><p><strong>Accommodation</strong></p><p><strong>Bishkek</strong>&nbsp;- 3 nights</p><p>3-star Navat Hotel / B Hotel or similar</p><p><strong>Son-Kul</strong>&nbsp;- 2 nights</p><p>Yurt camp (2 people sharing one yurt)</p><p><strong>Karakol</strong>&nbsp;- 1 night</p><p>Karavan or similar</p><p><strong>Karakol Gorge</strong>&nbsp;- 2 nights</p><p>Tent camp</p><p><strong>Ala-Kul Lake</strong>&nbsp;- 1 night</p><p>Tent camp</p><p><strong>Altyn Arashan Gorge</strong>&nbsp;- 1 night</p><p>Tent camp</p><p><strong>Lake Issyk-Kul</strong>&nbsp;- 1 night</p><p>Ressort hotel or similar</p>		f	28	22	\N	Notes.\r\n\r\nHotel accommodation depends on availability, in this case an equivalent hotel will be provided;\r\nThe trek itinerary is subject to change due to safety and weather conditions;\r\nAll guides speak English;\r\nTravel time is approximate and depends on road conditions and weather;\r\nTrekking takes approximately 5-7 hours (10-18 km) per day, depending on weather conditions and physical condition of the participants;\r\nThe trek does not go above 4000 meters above sea level;\r\nParticipants will prepare their own packed lunch after breakfast during the trek. Camp staff will provide a variety of options;\r\nBoiled water will be provided on the days of the trek to reduce the use of plastic; A personal flask is strongly recommended;\r\nOvernight camping is done in tents during the trek. Comfort in the tents is basic (no internet access or air conditioning) and you will share a tent with other participants.\r\n\r\nThe following are provided at each fixed tent campground:\r\n\r\nTents (designed for four people, but a tent is provided for every two people); and\r\nTEAM FOX table tent (designed for 10-20 people);\r\n5 cm mattresses and sleeping mats in each RED FOX FAMILY tent;\r\nElectricity (generator) is provided from 19:00 to 22:00 to charge batteries of cell phones, tablets, etc;\r\nToilet tents and shower tents (showers are provided with small basins, buckets and hot water). (Hot water provision may be difficult in poor weather conditions);\r\nTea, coffee, snacks and cookies;\r\nAuxiliary bar (vodka, wine, brandy, juice, etc.);\r\nKitchen utensils, tables, chairs.\r\n\r\nWhat is needed for trekking\r\nWaterproof trekking boots with ankle support;\r\nWaterproof rain jacket or rain cape\r\nSun hat or hat that covers ears and neck;\r\nDaypack (30-40 liters) with rain cover;\r\nWarm hat\r\nSleeping bag (comfortable temperature -5°C;)\r\nTrekking poles (highly recommended if there are stream crossings or steep ascents and descents);\r\nBasic first aid kit with antiseptic, antihistamine cream, throat lozenges, antidiarrheal (Imodium), painkillers, band-aids, blister remedy, insect repellent and rehydration salt;\r\nSunscreen (including ear protection, nose protection, etc.);\r\nFleece jacket or warm sweater\r\nGood quality sunglasses\r\nWarm gloves\r\nTrekking pants\r\n2 1 liter water bottles (it is recommended to use water bottles rather than disposable plastic bottles);\r\nWater purification tablets\r\nDry bag (to protect the contents of the trekking backpack, laptop, cell phone, etc.)\r\nStick\r\nHeadlamp and spare batteries\r\nThermal underwear\r\n\r\nAdditional trekking items\r\n\r\nOne pair of tennis or city sneakers;\r\nSweatpants/sandals for river crossings;\r\nSocks (1 pair for 2-3 days of trekking);\r\n1 pair of waterproof underpants;\r\nFor women: 1 headscarf to cover hair when visiting mosques and churches;\r\nShorts and/or swimwear (on treks near lakes, hot springs and rivers);\r\nBuff/scarf (for protection from dust and cold);\r\ntoiletries\r\nAntibacterial hand wash\r\nSmall towel (quick drying)\r\nThermarest sleeping mat or similar (note that 5 cm thick sleeping mats and thin sleeping pads are provided on trekking days)\r\nPenknife (sharp objects should be checked in checked baggage)\r\nRepair kit (needle, thread, duct tape);\r\nEarplugs to protect against river noise, snoring, etc.\r\nSingle occupancy tent camping supplement: 90 USD.	en	2024
23	Trekking 3: Jety Oguz 7 Days | Bishkek, Karakol, Svetlay polyana, Jety-Oguz, Karakol National Park	2	7	<p><strong>7 Days&nbsp;| Bishkek, Karakol, Svetlay polyana, Jety-Oguz, Karakol National Park</strong></p><p><strong>Group size 2-10 persons&nbsp; Start from end&nbsp; May till mid August 2024-25</strong></p><p><strong>Individual dates available</strong></p><p><strong>Price ( countable on request time)</strong></p><p>Kyrgyzstan is a mountainous country ideal for trekking enthusiasts. Hiking routes are often located at altitudes where you can enjoy pleasant climatic conditions without the risk of altitude sickness. This tour takes you to the mountainous regions around Karakol, where you will see beautiful gorges and waterfalls, mountain passes at 3,600 meters, breathtaking views of Tian Shan and the sparkling waters of the famous Issyk Kul Lake. In addition to hiking, the main sights of Bishkek, Karakol and Cholpon Ata are visited. Kyrgyzstan trekking tour is an authentic 7-day adventure.</p><p>Recommended personal packing list: warm clothes, jacket, tracking boots, sleeping bag, backpack, flashlight, first aid kit, sunglasses.</p><p>Conditions There are no technical difficulties on the trekking route, but you need to be in shape as you will walk 3-7 hours a day and cross a mountain pass (3665m).</p>	<p><strong>What includes:</strong></p><ul>\r\n\t<li>Accommodation</li>\r\n\t<li>Meals &nbsp;full board;</li>\r\n\t<li>All transfers;</li>\r\n\t<li>Sightseeing tour program with English speaking guide (on trek: for group of &nbsp;2 people - cook and guide is one person);</li>\r\n\t<li>Entrance fees to sights according to the program;</li>\r\n\t<li>Rent of kitchen equipment, a tents and mat;</li>\r\n\t<li>Assistance of porters. Please note that porters can carry maximum of 7 kg per tourist;</li>\r\n\t<li>Cook&rsquo;s services.</li>\r\n</ul><p style="margin-left:48px">&nbsp;</p><p style="margin-left:48px"><strong>Accommodation</strong></p><p style="margin-left:48px"><strong>Bishkek</strong>&nbsp;- 2 nights<br />\r\nB hotel /&nbsp;<a href="https://www.advantour.com/kyrgyzstan/hotels/bishkek/my-hotel.htm" style="color:#0563c1; text-decoration:underline">My hotel</a>&nbsp;/ Bridges<br />\r\n<strong>Karakol</strong>&nbsp;- 2 nights<br />\r\n<a href="https://www.advantour.com/kyrgyzstan/hotels/karakol/green-yard.htm" style="color:#0563c1; text-decoration:underline">Green Yard</a>&nbsp;/ Matsunoki guest house or similar<br />\r\n<strong>Trek</strong>&nbsp;- 3 nights<br />\r\nYurt (4 people in one yurt)<br />\r\n&nbsp;</p><p style="margin-left:48px"><strong>Price ( countable on request time)</strong></p><p style="margin-left:48px"><strong>Discounts for groups</strong></p>	<p>&bull;&nbsp;&nbsp; &nbsp; Early arrival night in Bishkek;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Single supply<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Visa cost;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Personal travel insurance;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Flight tickets;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Alcohol and soft drinks;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Folklore show in Bishkek.<br />\r\n&nbsp;</p>	t	18	22	\N		en	2024
18	Nomadic 9 days Horseriding tour	1	9	<p><strong>Nomadic Horseriding tour.&nbsp;Best season: June - September</strong></p><p><strong>Category: combined - auto/horseback</strong></p><p><strong>Group size: 2-15 persons</strong></p><p>Experience Kyrgyz culture and the spectacular landscapes of Central Asia in the most exciting way possible. Dive into the world of horse trekking and create memories to last a lifetime by experiencing the scenic valleys and vast landscapes of Kyrgyzstan. On this unique adventure, you will learn the basics of horseback riding and practice your new skills in the mountains of the Tien Shan Range. Make your own whip, ride in open fields and learn traditional Kyrgyz horse games. Stay with a local herder family and experience nomadic life. The guides are skilled riders and you will be immersed in a truly authentic Kyrgyz nomadic experience. This trek is ideal for those with little or no riding experience. It is also suitable for outdoor enthusiasts looking for a unique adventure!</p>	<p>&nbsp;</p><p><strong>What is included:</strong></p><p>Guide service (basic English)</p><p>Horse rental (9 days)</p><p>All accommodation during the horse trek (8 nights: camping, yurts, homestay, hotel)</p><p>All meals during the tour</p><p>Horseman service</p><p>Tent &nbsp;rental</p><p>All transfers from Bishkek to Bishkek</p><p>&nbsp;</p><p><strong>Accommodation:</strong></p><p>Guest house- 2 nights</p><p>Camping &ndash; 3 nights</p><p>Yurt camp &ndash; 3 nights</p><p>Hotel 3-4 stars -1 night</p><p>&nbsp;</p><p><strong>Price</strong></p><p>&quot;The price of each tour is individually negotiated and determined based on the duration of the tour, the client&#39;s needs and preferences, and the size of the group. This allows for a personalized, tailor-made experience that reflects your unique requirements and ensures a fulfilling and enjoyable trip.&quot;</p><p><strong>Group size 2-15 persons</strong></p><p><strong>2 people- 2758 usd doll each.</strong></p><p><strong>3 people &ndash; 2274 usd doll each</strong></p><p><strong>For groups price is negotiable</strong></p>	<p>&bull;&nbsp;&nbsp; &nbsp; Early arrival night in Bishkek;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Single supply<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Personal travel insurance;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Flight tickets;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Alcohol and soft drinks;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Folklore show in Bishkek.<br />\r\n&nbsp;</p>	t	25	21	\N		en	2024
24	5 day  tour to the ski base in Karakol and the Issyk Kul Lake.	1	5	<p><strong>The modern ski resort &quot;Karakol&quot; is located in Kyrgyzstan, 7 km from the city of Karakol.</strong></p><p><strong>In 2004, the base was completely modernized. Today, the &quot;Karakol&quot; is an ideal place not only for the training of athletes, but also for active recreation.</strong> <strong>Skiing in the ski base. Walk to the incredible views of the canyon.</strong></p><p><strong>Min size group 2-15 max</strong></p><p><strong>Individual dates are also available on request</strong></p><p><strong>Only in winter time. </strong></p>	<p>Accommodation&nbsp;</p><p>3-4 star hotel in Bishkek &ndash; 1 nights (last day)(twin room)</p><p>Karakol guesthouse &ndash; 3 nights (twin room)</p><p>Bokonbaeva, guesthouse &ndash; 1 night (twin room)</p><p>&nbsp;</p><p>What includes:</p><ul>\r\n\t<li>Accommodation</li>\r\n\t<li>English-speaking guide;</li>\r\n\t<li>Meals- full board</li>\r\n\t<li>Entrance &nbsp;fees</li>\r\n\t<li>Transport (type of vehicle depends on the group size);</li>\r\n\t<li>Bottled drinking water (1 litre per person per day);</li>\r\n</ul><p>&nbsp;</p><p>The price does NOT include:</p><p>Ski pass rental</p><p>&nbsp;</p><p><strong>Price per persons</strong></p><p><strong>2 persons-1000 usd doll</strong></p><p><strong>3 persons- 875 usd doll</strong></p><p><strong>Single supply- 150 usd dol</strong></p><p><strong>There&rsquo;s discount for groups</strong></p><p>&nbsp;</p>	<p>&bull;&nbsp;&nbsp; &nbsp; Early arrival night in Bishkek;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Single supply<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Visa cost;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Personal travel insurance;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Flight tickets;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Alcohol and soft drinks;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Folklore show in Bishkek.<br />\r\n&nbsp;</p>	t	23	24	\N		en	2024
26	Kyrgyzstan Small Group Tour 2024-2025 from may till September	1	7	<p><strong>7 Days&nbsp;| Bishkek, Cholpon Ata, Karakol, Kochkor, Son Kul.&nbsp; indivodual date is available on request</strong></p><p>Tours are offered from May to September.</p><p>Enjoy meeting new people and join a group of tourists from all over the world on a regular tour of Kyrgyzstan. In addition to tailor-made individual tours of Kyrgyzstan, we offer itineraries for the most popular tours of Kyrgyzstan with guaranteed departure dates in 2024 and 2025.</p><p>Home Kyrgyzstan Kyrgyzstan Tour Group Tours Kyrgyzstan Group Tours</p><p>Kyrgyzstan Small Group Tours 2024-2025</p>	<h4><strong>Accommodation</strong> in twin/double rooms. Yurts in Son-kul are shared by 2-3 people;</h4><h4><strong>Meals</strong> according to the program.</h4><h4><strong>All transfers;</strong></h4><h4>Accompanied by <strong>English-speaking guide</strong> (except airport transfers on Day 7);</h4><h4><strong>Entrance fees</strong> to tourist attractions according to the program;</h4><h4><strong>Felt Carpet Show</strong> in Kochkor;</h4><h4><strong>Eagle hunting show</strong> in Bokombaevo;</h4><h4><strong>Folk show </strong>in Karakol;</h4><p><strong>Prices.</strong></p><p><strong>1280 US$ per person</strong></p><p><strong>Single supplement US$ 100</strong></p><p><strong>100% departure guarantee - even if there is only 4 travellers.</strong></p><p><strong>Group size: 4-16 travellers.</strong></p><p>&nbsp;</p>	<p>Additional services at the hotel;<br />\r\nSupplement for early check-in and late check-out;<br />\r\nPhoto and video shooting;<br />\r\nConsular fees for a visa at the Consulate of Kyrgyzstan;<br />\r\nVisa support;<br />\r\nCost of international air tickets;<br />\r\nPersonal insurance and items not mentioned above.</p>	t	10	24	\N		en	2024
25	7 days best treasures of Kyrgyzstan tour.	1	7	<p><strong>7 days best treasures of Kyrgyzstan tour.Start from July-August.&nbsp;Individual dates are available on request</strong></p><p><strong>Group size 2-16 persons</strong></p><p><strong>Description</strong></p><p><strong><em>The nature of wild Kyrgyzstan and the ancient history of the Great Silk Road are well presented on our new &quot;Treasures of Kyrgyzstan&quot; trip. See stunning snow peaks, high mountain meadows, wide meadows Decked with the scent of plants and flowers, wild mountain rivers and soft mirror lakes scattered between tall peaks This is a unique, secluded experience that will stay in your mind forever.</em></strong></p>	<p><strong>Price on request. </strong></p><p><strong>The cost includes:</strong></p><ul>\r\n\t<li>Accommodation on twin</li>\r\n\t<li>Entrance &nbsp;fees</li>\r\n\t<li>Meal-Full board</li>\r\n\t<li>English speaking guide</li>\r\n\t<li>Transport from Bishkek&nbsp; to Bishkek</li>\r\n\t<li>Mineral water(1 l per person per day)</li>\r\n\t<li>Border permission to Kel Suu</li>\r\n\t<li>Horse rent</li>\r\n</ul>	<p><strong>The cost does not include:</strong></p><ul>\r\n\t<li>Single supplement</li>\r\n\t<li>Airfares</li>\r\n\t<li>All personal expenses</li>\r\n\t<li>Alcohol drinks</li>\r\n\t<li>Tips for guide and driver</li>\r\n\t<li>Visa fee and visa support</li>\r\n\t<li>Porter fee</li>\r\n</ul>	t	17	24	\N		en	2024
14	Horse Riding Tour in Kyrgyzstan, Naryn	1	5	<p><strong>5 Days&nbsp;| Bishkek, Kochkor, Kilemche, Jaman Echki, Tulpar-Tash, Tulga-Tash, Son-Kul lake</strong></p><p><strong>Starting from mid june till mid august 2024-25</strong></p><p><strong>Individuals dates are available on request</strong></p><p><strong>Group size min 2-14 persons</strong></p><p>Developing Kyrgyzstan is one of the best destinations for equestrian tours. The Telegraph&#39;s expert Chris Moss says this &#39;rugged country&#39; has long been favored for horseback riding. Horse riding tours teach the essence of the Kyrgyz way of life, much of it inherited and preserved from their nomadic ancestors. You&#39;ll stay in yurts, taste authentic nomadic cuisine and ride horses around the beautiful Son-kul Lake.</p><p>Prerequisites: You must be able to get on and off a horse without assistance, walk in the saddle and trot on level ground in a relaxed and controlled manner.</p><p>Tour notes: A local guide and rider will look after you and your horse throughout the tour. Riding time is approximately 4-6 hours per day. The altitude varies between 800-2500 m.</p><p>&nbsp;</p>	<ul>\r\n\t<li>Double room accommodation in Bishkek and Kochkor;</li>\r\n\t<li>Four-people accommodation in the yurt;</li>\r\n\t<li>Meal- full board</li>\r\n\t<li>Mineral water 1 L per person a day</li>\r\n\t<li>English speaking tour guide;</li>\r\n\t<li>Personnel for trek (stableman);</li>\r\n\t<li>Horses rent</li>\r\n\t<li>Transport for all transfers according the program.</li>\r\n</ul><p style="margin-left:48px">Conditions.</p><p style="margin-left:48px">&nbsp;</p><p style="margin-left:48px">1) Accommodation in dormitories:</p><p style="margin-left:48px">The yurts included in the itinerary are for 4-5 people.</p><p style="margin-left:48px">- The Jaman-echki &nbsp;yurt camp has outdoor showers and toilets.</p><p style="margin-left:48px">- The CBT yurts in Tulpar Tash are rustic shepherd yurts. Simple meals. Toilets are very basic and there is no shower.</p><p style="margin-left:48px">- Tash Dobo yurt camp has showers and normal toilets outside.</p><p style="margin-left:48px">&nbsp;</p><p style="margin-left:48px">2) Horses and luggage.</p><p style="margin-left:48px">You will ride on a shepherd&#39;s Kyrgyz horse. The horses are not big but they are very strong and can run long distances on high mountain roads.</p><p style="margin-left:48px">The horses are equipped with traditional Kyrgyz saddles similar to those of American cowboys. They are also equipped with bags for personal belongings.</p><p style="margin-left:48px">Some may want to take some of their belongings with them. There is plenty of room in the saddlebags. The rest of the luggage is delivered to the last yurt camp.</p><p style="margin-left:48px">Luggage horses are also available for an additional fee to carry only luggage.</p><p style="margin-left:48px">&nbsp;</p><p style="margin-left:48px">&nbsp;</p><p style="margin-left:48px">&nbsp;</p><p style="margin-left:48px">What do you need?</p><p style="margin-left:48px">Down jacket, warm sweater, silk sleeping bag liner, raincoat (waterproof pants with openings on the outside at the base of the legs so they can be put on and taken off without taking off the trekking boots), two or three pairs of warm socks, waterproof trekking boots, gloves, sunglasses, sunscreen with good UV protection UV protective lip balm, horse protectors and a safety riding helmet.</p><p style="margin-left:48px">&nbsp;safety helmets can be rented for an additional fee. Rental fees are&nbsp; US$40 for whole tour for helmets.</p><p style="margin-left:48px">Health.</p><p style="margin-left:48px">If you suffer from certain illnesses, bring a first aid kit and necessary medicines.</p><p style="margin-left:48px">Note: Please note that in certain circumstances, activities may be shortened or canceled without refund or reimbursement. Such circumstances include weather, earthquakes, other natural disasters, injuries or other health issues. You are not entitled to a refund or other reimbursement in the event of any of the above circumstances.</p><p style="margin-left:48px">&nbsp;</p><p>Accommodation:</p><p>Bishkek &ndash; 1 night (twin room)</p><p>3-4 star hotel</p><p>Guesthouse &ndash; 1 night (twin room)</p><p>Yurt camp &ndash; 3 nights (2-4 people in 1 yurt)</p><p>&nbsp;</p><p><strong>&nbsp;Price</strong></p><p><strong>2 persons- 1435 usd doll</strong></p><p><strong>3 persons-1150 usd dol</strong></p><p><strong>Theres discount for groups</strong></p><p>&nbsp;</p>	<p>&bull;&nbsp;&nbsp; &nbsp; Early arrival night in Bishkek;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Single supply<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Visa cost;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Personal travel insurance;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Flight tickets;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Alcohol and soft drinks;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Folklore show in Bishkek.<br />\r\n&nbsp;</p>	t	49	21	\N		en	2024
16	Horseback riding in the Chon-Kemin Valley. 3 days tour	1	3	<p><strong>Horseback riding in the Chon-Kemin Valley. 3 days tour.&nbsp;&nbsp;Starting from mid june till September 2024</strong></p><p><strong>Group size 2-15 </strong></p><p><strong>Individual dates are also available on request</strong></p><p>Horse riding tour to Chon-kemin Valley is a wonderful excursion that does not take too many days but gives you a lot of positive emotions. You can take amazing photos of Kyrgyz nature, enjoy its beauty, breathe in the fresh mountain air and feel like a nomad traveling for kilometers through the mountains and valleys on the back of a faithful horse.</p><p>Chong -Kemin is a unique natural park where many animals and plants are listed as extinct species. Although not far from the capital, the valley has managed to preserve its natural landscape, unspoiled beauty and the charm of wildlife trails and unpopular footpaths. The green slopes of forested mountains, the floods carrying cool water from the valley, the fresh, clean air, the pleasant summer breeze blowing over travelers - you can be part of it, composing songs and legends.</p>	<ul>\r\n\t<li>Transport according to the program&nbsp; from Bishkek- to Bishkek</li>\r\n\t<li>Accommodation</li>\r\n\t<li>Chef and cooking</li>\r\n\t<li>Tables, chairs, all kitchen staff</li>\r\n\t<li>Meals 3 times a day (except last dinner on the way back)</li>\r\n\t<li>Entrance tickets according to the program</li>\r\n\t<li>Horses and experienced equestrian guide ( if you need extra guide to hold your horse and walk with you on food &ndash;is available for extra pay)</li>\r\n\t<li>English ( or other language depending on request ) guide whole tour.</li>\r\n</ul><p style="margin-left:48px">&nbsp;</p><p style="margin-left:48px">Accommodation</p><p style="margin-left:48px">In Tents - 1 night (2-4 people in one tent)</p><p style="margin-left:48px">Guesthouse -1 Night ( twin room)</p><p style="margin-left:48px">3-4 star Hotel in Bishkek (twin room)</p><p style="margin-left:48px">&nbsp;</p><p style="margin-left:48px"><strong>Price</strong></p><p style="margin-left:48px"><strong>2 persons &ndash; 1023 usd doll per person (2026 usd doll in total)</strong></p><p style="margin-left:48px"><strong>3 persons-&nbsp; 830 usd dol per person</strong></p><p style="margin-left:48px"><strong>There are discounts for groups, depending on quantity of guests&nbsp;</strong></p><p style="margin-left:48px"><strong>Single supply &ndash; 80 usd dol</strong></p><p style="margin-left:48px">&nbsp;</p>	<p>&bull;&nbsp;&nbsp; &nbsp; Early arrival night in Bishkek;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Single supply<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Visa cost;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Personal travel insurance;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Flight tickets;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Alcohol and soft drinks;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Folklore show in Bishkek.<br />\r\n&nbsp;</p>	t	1	21	\N		en	2024
22	Trekking 3: Bishkek-Ala-Kul Lake-Bishkek	1	7	<p><strong>7 &nbsp;Days&nbsp;| Bishkek, Karakol, Karakol valley, Ala-Kul lake, Keldike gorge, Altyn Arashan gorge</strong></p><p><strong>Group size 2-10 persons starting from mid May till end August 2024-25</strong></p><p><strong>individual days are available on request</strong></p><p><strong>Price depends on request (quantity of people and etc)</strong></p><p>Kyrgyzstan Walking Tour-3 is a trip that combines interesting hikes in the mountains, excursions to sights and time spent on the beach. The walks explore the natural beauty of Kyrgyzstan in the Karakol region. You will visit Karakol Valley with Ala-Kul mountain lake and Golden Valley Altin-Arashan with its healing hot springs. You can also visit the historical sites of Bishkek, Karakol and Cholpon Ata and enjoy a full day at the Issyk-Kul resort.</p><p>Recommended equipment: coat, warm clothes, boots, sleeping bag, mat, backpack, flashlight, first aid kit, sunglasses.</p><p>Conditions The trekking route has no technical difficulties, but you need to be in shape as you will walk 3-6 hours a day and cross a mountain pass (3860m).</p>	<p>Whats&nbsp; includes:</p><ul>\r\n\t<li>Accommodation</li>\r\n\t<li>Meals full board;</li>\r\n\t<li>Transportation through the whole trip.</li>\r\n\t<li>English speaking guide through the whole trip</li>\r\n\t<li>Entrance fees to sights according to the program;</li>\r\n\t<li>Rent of kitchen equipment and a tents, mat;</li>\r\n\t<li>Assistance of porters. Please note that porters can carry maximum of 7 kg per tourist;</li>\r\n\t<li>Cook&rsquo;s services.</li>\r\n</ul><p style="margin-left:48px">&nbsp;</p><p style="margin-left:48px"><strong>Accommodation</strong></p><p style="margin-left:48px"><strong>Bishkek</strong>&nbsp;- 2 nights<br />\r\nB hotel &nbsp;/ Bridges<br />\r\n&nbsp;</p><p style="margin-left:48px"><strong>Karakol</strong>&nbsp;- 2 nights<br />\r\nMatsunoki guest house or similar<br />\r\n&nbsp;</p><p style="margin-left:48px"><strong>Trek</strong>&nbsp;- 3 nights<br />\r\nYurt (4 people in one yurt)<br />\r\n&nbsp;</p><p><strong>Price will be depending on request (quantity of people and etc)</strong></p>	<p>&bull;&nbsp;&nbsp; &nbsp; Early arrival night in Bishkek;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Single &nbsp;supplement;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Visa cost;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Full board;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Personal travel insurance;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Flight tickets;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Alcohol and soft drinks;<br />\r\n&nbsp;</p>	t	78	22	\N		en	2024
11	Horse riding Golden and Eagle hunting 4 days tour	1	4	<p><strong>Horse riding Golden and Eagle hunting 4 days tour.&nbsp;From<em> </em>May&nbsp; to the end September 2024</strong></p><p><strong>individuals dates available on request</strong></p><p><strong>group size min 3-15 persons</strong></p><p><em>Season of the product tour: This adventure tour is able to offer from May&nbsp; to the end September 2024.&nbsp;</em><em>This tour is interesting with combine eagle hunting show and all next day horse riding day. Eagle hunting will be the show in a big wide field using rabbit ( optional- if you are ok using us an animal for show as victim) as a hunting victim. At the same &nbsp;place will be archery &nbsp;show and pure kyrgyz hunting dog&nbsp; Taygan hunting. The next day, will be all day&nbsp; horse riding day up to Shatyly panorama where opens wide amazingly beautiful view of nature and come back to Bokonbaeva city. Picnic lunch in the mountain.</em></p>	<p><em>Its includes:</em></p><ul>\r\n\t<li><em>Eagle hunting show</em></li>\r\n\t<li><em>Horse riding</em></li>\r\n\t<li><em>All meals as in program</em></li>\r\n\t<li><em>English speaking (or other language (as request) ) guide during the all tour</em></li>\r\n\t<li><em>Accommodation 4 nights</em></li>\r\n\t<li><em>Transportation Bishkek to Bishkek</em></li>\r\n\t<li><em>1 lt of water every day per person</em></li>\r\n\t<li><em>All enrty fees</em></li>\r\n\t<li><em>Local Village Banya (sauna)</em></li>\r\n</ul><p style="margin-left:48px"><em>&nbsp;&nbsp; NOTE: If you need extra guide to hold your horse while riding, its possible for extra pay.its not included to the price</em></p><p style="margin-left:48px">Price</p><p style="margin-left:48px"><strong>&nbsp;2 person &ndash; 1345 usd doll each person</strong></p><p style="margin-left:48px"><strong>3 persons- 1175 usd doll each person </strong></p><p style="margin-left:48px"><strong>For group the price is negotiated</strong></p><p style="margin-left:48px">Single supply 70 usd doll. ( only hotel, not available in yurt camp and family stay)</p>	<ul>\r\n\t<li>&nbsp;<span style="color:#4f5d6e">Early arrival night in Bishkek;</span></li>\r\n\t<li><span style="color:#4f5d6e">Visa cost;</span></li>\r\n\t<li><span style="color:#4f5d6e">Personal travel insurance;</span></li>\r\n\t<li><span style="color:#4f5d6e">Flight tickets;</span></li>\r\n\t<li><span style="color:#4f5d6e">Alcohol and soft drinks;</span></li>\r\n</ul><p>&nbsp;</p>	t	178	21	https://www.youtube.com/embed/zU-rDV6LiH4?si=pVXCksZxZ7o5WKYG	<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</strong></p>	en	2024
19	Kazakhstan-Kyrgyzstan Group Tour	1	8	<p><strong>8 days&nbsp;| Astana, Almaty, Karakol, Kochkor, Son-Kul, Bishkek 2024-2025 years</strong></p><p><strong>Starting time from june till septembet 2024</strong></p><p><strong>Dates &amp; Availability</strong></p><p>Please let us know if this dates not right &nbsp;for you, so we can organize suitable different date if will be minimum 3 persons, up to 16.</p><p>Group tour &quot;Kazakhstan-Kyrgyzstan&quot; will allow you to visit the most outstanding sights of the two neighboring countries of Central Asia. In the Charyn Valley, Jeti-Oguz, Sonkul and many other places you will see stunning nature. In Almaty and Bishkek you will experience the contrasts. On a Kazakhstan-Kyrgyzstan group tour, you&#39;ll make memories to last a lifetime, take great selfies, and meet travelers from all over the world.</p><p>&nbsp;</p>	<p>&nbsp;</p><ul>\r\n\t<li>Twin/double room accommodation</li>\r\n\t<li>Meals &ndash; as stated in the program;</li>\r\n\t<li>Transportation throughout the whole trip;</li>\r\n\t<li>English-speaking guide to accompany the group&nbsp;</li>\r\n\t<li>Entrance fees to sights, museums. Camera/video fees are not included and paid separately;</li>\r\n\t<li>Felt carpet show in Kochkor;</li>\r\n\t<li>Eagle hunting show in Bokonbaevo;</li>\r\n\t<li>Kyrgyz folklore show in Karakol.</li>\r\n\t<li>&nbsp;</li>\r\n</ul><p>100% departure guarantee - even if only 3 person is traveling.</p><p>&nbsp;</p><p>Group size: 3-16 people.</p><p><strong>Price</strong></p><p><strong>Group tour from 2200 usd dollars </strong></p><p><strong>Single supply 260usd dollars.</strong></p><p>&nbsp;</p><p>Itineraries and prices are subject to change due to airline and train schedule changes, currency fluctuations and other unforeseen circumstances.</p><p>&nbsp;</p><p>We strongly recommend that you do not purchase tickets for the 2024 tour without consulting a travel consultant.</p><p>&nbsp;</p><p><strong>Accommodation.</strong></p><p><strong>Astana</strong>&nbsp;- 2 nights</p><p>Wyndham or similar</p><p><strong>Almaty</strong>&nbsp;- 1 night</p><p>Mercure / Kazzhol Park or similar</p><p><strong>Karakol</strong>&nbsp;- 1 night</p><p>Matsunoki / 78 Hotel /&nbsp;<a href="https://www.advantour.com/kyrgyzstan/hotels/karakol/green-yard.htm" style="color:#0563c1; text-decoration:underline">Green Yard</a>&nbsp;or similar</p><p><strong>Kochkor</strong>&nbsp;- 1 night</p><p>Mira guest house</p><p><strong>Son-Kul</strong>&nbsp;- 1 night</p><p>Yurt (2 people in one yurt)</p><p><strong>Bishkek</strong>&nbsp;- 1 night</p><p>B hotel /&nbsp;<a href="https://www.advantour.com/kyrgyzstan/hotels/bishkek/asia-mountains.htm" style="color:#0563c1; text-decoration:underline">Asia Mountains</a>&nbsp;or similar</p><p>&nbsp;</p>	<p>&bull;&nbsp;&nbsp; &nbsp; Early arrival night in Bishkek;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Single supply<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Visa cost<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Personal travel insurance;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Flight tickets;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Alcohol and soft drinks;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Folklore show in Bishkek.<br />\r\n&nbsp;</p>	t	61	25	\N		en	2024
12	Golden Eagle hunting and horse riding 3 days tour	1	3	<p><strong>Season of the product tour: This adventure tour is able to offer from May&nbsp; to the end September 2024</strong></p><p><strong>individual date is available on request</strong></p><p><strong>Group size min 2 to 15 max</strong></p><p>This tour is interesting with combine eagle hunting show and all next day horse riding day. Eagle hunting will be the show in a big wide field using rabbit ( optional- if you are ok using us an animal for show as victim) as a hunting victim. At the same &nbsp;place will be archery &nbsp;show and pure kyrgyz hunting dog&nbsp; Taygan hunting. The next day, will be all day&nbsp; horse riding day up to Shatyly panorama where opens wide amazingly beautiful view of nature and come back to Bokonbaeva city. Picnic lunch in the mountain.</p>	<ul>\r\n\t<li>Eagle hunting show</li>\r\n\t<li>Horse riding</li>\r\n\t<li>All meals as in program</li>\r\n\t<li>English (or other language (as request) ) guide during the all tour</li>\r\n\t<li>Accommodation 3 nights</li>\r\n\t<li>Transportation Bishkek to Bishkek</li>\r\n\t<li>1 lt of water every day per person</li>\r\n\t<li>All enrty fees</li>\r\n</ul><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Accommodation 3 nights</p><ul>\r\n\t<li>Family stay in Bokonbaeva &ndash; 1 night (2-4 persons in one room)</li>\r\n\t<li>Yurt camp 1 night (2-4 persons in one yurt)</li>\r\n\t<li>3-4 star hotel in Bishkek &ndash; 1 night (twin room)</li>\r\n</ul><p style="margin-left:48px">&nbsp;</p><p style="margin-left:48px">Price</p><p style="margin-left:48px">&nbsp;2 person &ndash; 930 usd doll each person</p><p style="margin-left:48px">3 persons- 760 usd doll each person</p><p style="margin-left:48px">For group the price is negotiated</p><p style="margin-left:48px">Single supply 60 usd doll. ( only hotel, not available in yurt camp and family stay)</p><p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;NOTE: If you need extra guide to hold your horse while riding, its possible for extra pay.its not included to the price</p>	<p>&bull;&nbsp;&nbsp; &nbsp; Early arrival night in Bishkek;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Single supply<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Visa cost;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Personal travel insurance;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Flight tickets;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Alcohol and soft drinks;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Folklore show in Bishkek.<br />\r\n&nbsp;</p>	t	54	21	\N	<p><strong>Season of the product tour: This adventure tour is able to offer from May&nbsp; to the end September 2024</strong></p>	en	2024
28	Yurt to Yurt - Nomadic Culture Tour from june 1st till 5th september	2	9	<p style="margin-left:48px"><strong>Group size: 4-16 people. Nomadic Culture Tour from june 1st till 5th september</strong></p><p>This tour is conducted during the summer period. <strong>Individuals dates also available on request</strong></p><p>The &quot;From Yurt to Yurt - Nomadic Culture&quot; tour offers travelers an affordable and unforgettable way to experience the culture of Kyrgyzstan. In addition to staying in mountain, steppe and lake yurts, during this 10-day trip travelers will be able to meet shepherds, learn how to set up a yurt, take part in making a felt rug, hiking, swimming and horseback riding</p><p><em><strong>Price depends on request ( quantity of tourist)</strong></em></p>	<p>Notes.</p><p>Prices are based on 3-star hotels in Bishkek. Upgrading to a higher level hotel is possible upon request for an additional fee.<br />\r\nRural residents are not punctual and can be 20-30 minutes late. Therefore, it is not always possible to be on time on the route, especially if the locals cook, serve food or organize horseback riding.<br />\r\nKyrgyz people are very friendly and love to take pictures. However, if you want to take pictures of elderly people, mosques, churches, funerals, etc. or the countryside, ask permission.<br />\r\nThe same sightseeing program can be arranged on another day if desired.</p><p><br />\r\n<strong>Price depends on request ( quantity of tourist)</strong></p><p>&nbsp;</p><ul>\r\n\t<li>Transport for transfers and excursions during the tour (car in good condition with air conditioning); 3-4 people &ndash; jeep; 5-12 pax - Mercedes Sprinter;</li>\r\n\t<li>twin / double room accommodation;</li>\r\n\t<li>Four-person accommodation in the yurts;</li>\r\n\t<li>Full board&nbsp;</li>\r\n\t<li>Entree fees t</li>\r\n\t<li>Mineral water during the tour (1 liter per person);</li>\r\n\t<li>Tour guide.</li>\r\n</ul>	<ul>\r\n\t<li>&nbsp;<span style="color:#4f5d6e">Early arrival night in Bishkek;</span></li>\r\n\t<li><span style="color:#4f5d6e">Single tent supplement;</span></li>\r\n\t<li><span style="color:#4f5d6e">Visa cost;</span></li>\r\n\t<li><span style="color:#4f5d6e">Personal travel insurance;</span></li>\r\n\t<li><span style="color:#4f5d6e">Flight tickets;</span></li>\r\n\t<li><span style="color:#4f5d6e">Alcohol and soft drinks;</span></li>\r\n</ul>	t	13	24	\N		en	2024
\.


--
-- Data for Name: clients_requests; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.clients_requests (id, status, first_name, last_name, email, phone, size, budget, message, newsletter, contact, created_at, tour_id) FROM stdin;
\.


--
-- Data for Name: clients_information; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.clients_information (id, birth_date, nationality, address, from_where, language, currency, passport, passport_img, updated_at, request_id) FROM stdin;
\.


--
-- Data for Name: clients_sitereviews; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.clients_sitereviews (id, firstname, lastname, mark, text, photo, created_at, status) FROM stdin;
5	Бейшен	Бейшенгул	4	Discover ancient Silk Road destinations of the Central Asia and South Caucasus with private custom-made tours. Follow the footsteps of the caravans that travelled between East and West delivering goods. Yur adventures with new friends as you explore five exotic Silk Road cities on this extended small group tour of Uzbekistan’s historical, cultural, and scenic highlights.	default_profile_photo.png	2023-09-27 13:57:14.208441+03	1
4	Чынгыз	Чынгызбеков	5	Discover ancient Silk Road destinations of the Central Asia and South Caucasus with private custom-made tours. Follow the footsteps of the caravans that travelled between East and West delivering goods. Yur adventures with new friends as you explore five exotic Silk Road cities on this extended small group tour of Uzbekistan’s historical, cultural, and scenic highlights.	default_profile_photo.png	2023-09-27 13:56:45.741916+03	1
3	Beka	Sercan	5	Discover ancient Silk Road destinations of the Central Asia and South Caucasus with private custom-made tours. Follow the footsteps of the caravans that travelled between East and West delivering goods. Yur adventures with new friends as you explore five exotic Silk Road cities on this extended small group tour of Uzbekistan’s historical, cultural, and scenic highlights.	default_profile_photo.png	2023-09-27 13:56:18.499803+03	1
2	Ilimbek	Kaiyrbekov	3	Discover ancient Silk Road destinations of the Central Asia and South Caucasus with private custom-made tours. Follow the footsteps of the caravans that travelled between East and West delivering goods. Yur adventures with new friends as you explore five exotic Silk Road cities on this extended small group tour of Uzbekistan’s historical, cultural, and scenic highlights.	default_profile_photo.png	2023-09-27 13:55:44.366254+03	1
1	Ilimbek	Kaiyrbekov	3	Discover ancient Silk Road destinations of the Central Asia and South Caucasus with private custom-made tours. Follow the footsteps of the caravans that travelled between East and West delivering goods. Yur adventures with new friends as you explore five exotic Silk Road cities on this extended small group tour of Uzbekistan’s historical, cultural, and scenic highlights.	default_profile_photo.png	2023-09-27 13:55:40.743839+03	1
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2023-09-26 12:15:29.977484+03	1	Slider object (1)	1	[{"added": {}}]	12	1
2	2023-09-26 12:18:00.431392+03	1	Бизнес	1	[{"added": {}}]	25	1
3	2023-09-26 12:18:13.416853+03	1	BMW	1	[{"added": {}}]	23	1
4	2023-09-26 12:19:48.270845+03	1	M5	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "M5"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430 \\u0430\\u0440\\u0435\\u043d\\u0434\\u044b", "object": "M5"}}]	24	1
5	2023-09-27 13:10:33.445388+03	4	Chyngyz Mirlan uulu	1	[{"added": {}}]	28	1
6	2023-09-27 13:10:47.906993+03	4	Chyngyz Mirlan uulu	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	28	1
7	2023-09-27 13:36:51.568069+03	1	M5	2	[]	24	1
8	2023-09-27 13:38:06.76613+03	5	CHyngy Mirlan uulu	1	[{"added": {}}]	28	1
9	2023-09-27 13:43:25.926167+03	5	CHyngy Mirlan uulu	2	[{"changed": {"fields": ["\\u0414\\u0430\\u0442\\u0430 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430", "\\u0414\\u0430\\u0442\\u0430 \\u043e\\u043a\\u043e\\u043d\\u0447\\u0430\\u043d\\u0438\\u044f"]}}]	28	1
10	2023-09-27 13:44:28.513423+03	5	CHyngy Mirlan uulu	2	[{"changed": {"fields": ["\\u0414\\u0430\\u0442\\u0430 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430", "\\u0414\\u0430\\u0442\\u0430 \\u043e\\u043a\\u043e\\u043d\\u0447\\u0430\\u043d\\u0438\\u044f"]}}]	28	1
11	2023-09-27 13:57:58.615482+03	5		2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	19	1
12	2023-09-27 13:57:58.628169+03	4		2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	19	1
13	2023-09-27 13:57:58.632392+03	3		2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	19	1
14	2023-09-27 13:57:58.635762+03	2		2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	19	1
15	2023-09-27 13:57:58.638888+03	1		2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	19	1
16	2023-09-27 14:06:29.726926+03	1	Бишкек	1	[{"added": {}}]	8	1
17	2023-09-27 14:06:31.744516+03	1	Конный Тур	1	[{"added": {}}]	6	1
18	2023-09-27 14:09:04.125828+03	1	Природа и горы	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1000"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "images", "object": "Image"}}]	9	1
19	2023-09-27 14:12:57.357964+03	1	Природа и горы	2	[{"deleted": {"name": "images", "object": "Image"}}]	9	1
20	2023-09-27 14:13:10.158564+03	1	Природа и горы	2	[{"added": {"name": "images", "object": "Image"}}]	9	1
21	2023-09-27 14:15:15.960143+03	1	Природа и горы	2	[{"deleted": {"name": "images", "object": "Image"}}]	9	1
22	2023-09-27 14:15:29.448296+03	1	Природа и горы	2	[{"added": {"name": "images", "object": "Image"}}]	9	1
23	2023-09-27 14:16:11.987703+03	1	Конный Тур	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	6	1
24	2023-09-27 14:17:44.615011+03	2	Ы	1	[{"added": {}}]	8	1
25	2023-09-27 14:17:59.225282+03	2	Ысык-Кол	2	[{"changed": {"fields": ["\\u041e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c", "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	8	1
26	2023-09-27 14:18:03.31994+03	2	Классическая культура	1	[{"added": {}}]	6	1
27	2023-09-27 14:18:21.005631+03	1	Бишкек	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	8	1
28	2023-09-27 14:18:30.04246+03	1	Бишкек	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	8	1
29	2023-09-27 14:18:32.147649+03	1	Конный Тур	2	[]	6	1
30	2023-09-27 14:19:29.559418+03	2	Кыргызские Культурные	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	6	1
31	2023-09-27 14:19:42.772312+03	2	Классика Кыргызстана	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	6	1
32	2023-09-27 14:20:00.508573+03	3	Классика Кыргызстана	1	[{"added": {}}]	6	1
33	2023-09-27 14:20:49.171713+03	4	Кыргызские Культурные	1	[{"added": {}}]	6	1
34	2023-09-27 14:20:53.603744+03	2	Tour title	1	[{"added": {}}]	9	1
35	2023-09-27 14:23:27.943176+03	1	Природа и горы	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
36	2023-09-27 14:26:05.534424+03	2	Классический групповой тур по Узбекистану	2	[{"changed": {"fields": ["\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a", "\\u0422\\u0438\\u043f \\u0442\\u0443\\u0440\\u0430", "\\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c (\\u0434\\u0435\\u043d\\u044c)", "\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1299"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "images", "object": "Image"}}]	9	1
37	2023-09-27 14:37:27.985606+03	5	Искусство и Традиции	1	[{"added": {}}]	6	1
38	2023-09-27 14:37:42.541479+03	6	Культурная Эпопея	1	[{"added": {}}]	6	1
74	2023-09-29 14:42:53.356272+03	4	Ысык-Көлдө жергиликтүү тургундун үйүнөн 5 кг ашык марихуана табылды	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": ""}}]	44	1
75	2023-09-29 14:44:05.894885+03	4	Ысык-Көлдө жергиликтүү тургундун үйүнөн 5 кг ашык марихуана табылды	2	[{"changed": {"fields": ["\\u041f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	44	1
76	2023-09-29 16:34:53.715468+03	2	Классический групповой тур по Узбекистану	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
77	2023-09-29 16:35:14.237452+03	1	Природа и горы	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	9	1
78	2023-09-29 16:35:23.936363+03	2	Классический групповой тур по Узбекистану	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
80	2023-09-30 12:24:35.240414+03	7	Культурный тур-2	1	[{"added": {}}]	6	1
182	2023-09-30 13:54:02.567441+03	22	string string	3		28	1
183	2023-09-30 13:54:02.570906+03	21	string string	3		28	1
184	2023-09-30 13:54:02.574026+03	20	тстоивсndcnjd стовтоив	3		28	1
39	2023-09-27 15:10:02.666866+03	1	Настройки создания тура	1	[{"added": {}}, {"added": {"name": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "object": "preferred tour"}}, {"added": {"name": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "object": "Horse riding tour"}}, {"added": {"name": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "object": "City tour"}}, {"added": {"name": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "object": "around the lake tour"}}, {"added": {"name": "\\u0420\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u0435", "object": "Hotel"}}, {"added": {"name": "\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435", "object": "\\u0411\\u0435\\u0437 \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f"}}, {"added": {"name": "\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435", "object": "\\u0417\\u0430\\u0432\\u0442\\u0440\\u0430\\u043a"}}, {"added": {"name": "\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435", "object": "\\u041f\\u043e\\u043b\\u0443\\u043f\\u0430\\u043d\\u0441\\u0438\\u043e\\u043d"}}, {"added": {"name": "\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435", "object": "\\u041f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u041f\\u0430\\u043d\\u0441\\u0438\\u043e\\u043d"}}, {"added": {"name": "\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435", "object": "\\u0412\\u0441\\u0435 \\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"}}, {"added": {"name": "\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435", "object": "\\u0423\\u043b\\u044c\\u0442\\u0440\\u0430 \\u0412\\u0441\\u0435 \\u0412\\u043a\\u043b"}}, {"added": {"name": "\\u0422\\u0440\\u0430\\u043d\\u0441\\u043f\\u043e\\u0440\\u0442", "object": "Van"}}, {"added": {"name": "\\u0422\\u0440\\u0430\\u043d\\u0441\\u043f\\u043e\\u0440\\u0442", "object": "Crossover"}}, {"added": {"name": "\\u0422\\u0440\\u0430\\u043d\\u0441\\u043f\\u043e\\u0440\\u0442", "object": "Sedan"}}, {"added": {"name": "\\u0422\\u0440\\u0430\\u043d\\u0441\\u043f\\u043e\\u0440\\u0442", "object": "SUV"}}]	40	1
40	2023-09-27 15:28:13.862674+03	1	Настройки создания тура	2	[{"added": {"name": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "object": "test"}}, {"deleted": {"name": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "object": "around the lake tour"}}, {"added": {"name": "\\u0420\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u0435", "object": "Yurt"}}]	40	1
41	2023-09-27 15:35:53.30775+03	1	sfhivksf	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	10	1
42	2023-09-27 16:11:21.144545+03	5	Chyngy Mirlan uulu	2	[{"changed": {"fields": ["\\u0418\\u043c\\u044f"]}}]	28	1
43	2023-09-27 16:23:13.390362+03	2	Классический групповой тур по Узбекистану	2	[{"changed": {"fields": ["\\u0422\\u0438\\u043f \\u0442\\u0443\\u0440\\u0430"]}}]	9	1
44	2023-09-27 16:24:48.660291+03	1	Природа и горы	2	[{"changed": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1000", "fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	9	1
45	2023-09-27 17:03:10.156953+03	1	Нарын	1	[{"added": {}}]	43	1
46	2023-09-27 17:07:14.258969+03	1	Article_1	1	[{"added": {}}]	44	1
47	2023-09-27 17:12:54.714403+03	1	Article_1	2	[{"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": ""}}]	44	1
48	2023-09-27 17:13:07.695621+03	1	Article_1	2	[{"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": ""}}]	44	1
49	2023-09-27 17:26:29.484168+03	1	Article_1	2	[]	44	1
50	2023-09-27 17:27:04.519569+03	1	Article_1	2	[]	44	1
51	2023-09-28 12:16:45.931182+03	1	M5	2	[{"changed": {"name": "\\u0426\\u0435\\u043d\\u0430 \\u0430\\u0440\\u0435\\u043d\\u0434\\u044b", "object": "M5", "fields": ["\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0430\\u0440\\u0435\\u043d\\u0434\\u044b"]}}]	24	1
52	2023-09-28 12:16:58.348931+03	1	M5	2	[{"changed": {"name": "\\u0426\\u0435\\u043d\\u0430 \\u0430\\u0440\\u0435\\u043d\\u0434\\u044b", "object": "M5", "fields": ["\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0430\\u0440\\u0435\\u043d\\u0434\\u044b"]}}]	24	1
53	2023-09-28 14:10:17.684571+03	1	Article_1	2	[{"changed": {"fields": ["\\u0414\\u0430\\u0442\\u0430 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u044f"]}}]	44	1
54	2023-09-28 14:24:22.829363+03	1	Срнтпня Ьшкфтдф ггдг	1	[{"added": {}}]	29	1
55	2023-09-28 14:34:06.076173+03	1	Природа и горы	2	[{"changed": {"fields": ["\\u0422\\u0438\\u043f \\u0442\\u0443\\u0440\\u0430"]}}]	9	1
56	2023-09-28 15:24:09.88083+03	1	Природа и горы	2	[{"changed": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1000", "fields": ["\\u041a\\u0440\\u0430\\u0439\\u043d\\u0438\\u0439 \\u0441\\u0440\\u043e\\u043a", "\\u041d\\u0430\\u0447\\u0430\\u043b\\u043e \\u0442\\u0443\\u0440\\u0430"]}}]	9	1
57	2023-09-28 16:02:50.722027+03	1	Slider object (1)	2	[{"changed": {"fields": ["\\u0422\\u0443\\u0440 \\u043d\\u0430 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u0441\\u0441\\u044b\\u043b\\u0430\\u0435\\u0442\\u0441\\u044f \\u0441\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440"]}}]	12	1
58	2023-09-28 16:54:51.550795+03	2	Классический групповой тур по Узбекистану	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
59	2023-09-28 16:57:14.195629+03	1	Природа и горы	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
60	2023-09-28 21:47:56.443836+03	1	Article_1	2	[{"changed": {"fields": ["\\u041a\\u0440\\u0430\\u0442\\u043a\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u041f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	44	1
61	2023-09-29 01:13:40.63176+03	7		2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	33	1
62	2023-09-29 01:13:40.635724+03	6		2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	33	1
63	2023-09-29 01:13:40.639701+03	5		2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	33	1
64	2023-09-29 01:13:40.645017+03	4		2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	33	1
65	2023-09-29 01:13:40.649557+03	3		2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	33	1
66	2023-09-29 14:29:42.257633+03	2	Ысык-Кол	1	[{"added": {}}]	43	1
67	2023-09-29 14:29:56.382975+03	3	Бишкек	1	[{"added": {}}]	43	1
68	2023-09-29 14:30:07.228848+03	4	Баткен	1	[{"added": {}}]	43	1
69	2023-09-29 14:30:28.629623+03	5	Ош	1	[{"added": {}}]	43	1
70	2023-09-29 14:31:04.714051+03	6	Жалал-Абад	1	[{"added": {}}]	43	1
71	2023-09-29 14:31:15.403758+03	6	Жалал-Абад	2	[]	43	1
72	2023-09-29 14:35:20.858673+03	2	Ошто шаар күнүнө карата чет элдик ырчылардын катышуусунда гала-концерт өтөт	1	[{"added": {}}]	44	1
73	2023-09-29 14:40:20.21465+03	3	Жалал-Абадда 130га жакын жаранга жүрөк операциясы бекер жасалат	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": ""}}]	44	1
79	2023-09-30 12:24:31.167378+03	3	Жалал-Абад	1	[{"added": {}}]	8	1
81	2023-09-30 12:26:50.021903+03	3	Индивидуальные туры в Кыргызстан	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1200"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
82	2023-09-30 12:29:09.479609+03	4	Нарын	1	[{"added": {}}]	8	1
83	2023-09-30 12:29:13.144716+03	8	Рафтинг тур по Кыргызстану-1	1	[{"added": {}}]	6	1
84	2023-09-30 12:31:09.014684+03	4	Рафтинг тур в Киргизии	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "999"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
85	2023-09-30 12:32:06.792952+03	9	Рафтинг тур по Кыргызстану-2	1	[{"added": {}}]	6	1
86	2023-09-30 12:35:40.777408+03	5	Рафтинг тур по Кыргызстану-2	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1000"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
87	2023-09-30 12:40:55.895112+03	5	Рафтинг тур по Кыргызстану-2	2	[{"changed": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1000", "fields": ["\\u041a\\u0440\\u0430\\u0439\\u043d\\u0438\\u0439 \\u0441\\u0440\\u043e\\u043a", "\\u041d\\u0430\\u0447\\u0430\\u043b\\u043e \\u0442\\u0443\\u0440\\u0430", "\\u041a\\u043e\\u043d\\u0435\\u0446 \\u0442\\u0443\\u0440\\u0430"]}}]	9	1
88	2023-09-30 12:42:01.139003+03	5	Рафтинг тур по Кыргызстану-2	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
89	2023-09-30 12:44:51.344687+03	10	Однодневный Тур в Киргизии - Ущелье Ала-Арча	1	[{"added": {}}]	6	1
90	2023-09-30 12:47:14.916707+03	6	Однодневные туры в Кыргызстан	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1500"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
91	2023-09-30 12:48:49.196705+03	3	Индивидуальные туры в Кыргызстан	2	[{"changed": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1200", "fields": ["\\u041a\\u0440\\u0430\\u0439\\u043d\\u0438\\u0439 \\u0441\\u0440\\u043e\\u043a", "\\u041d\\u0430\\u0447\\u0430\\u043b\\u043e \\u0442\\u0443\\u0440\\u0430", "\\u041a\\u043e\\u043d\\u0435\\u0446 \\u0442\\u0443\\u0440\\u0430"]}}]	9	1
92	2023-09-30 12:49:11.98363+03	4	Рафтинг тур в Киргизии	2	[{"changed": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "999", "fields": ["\\u041a\\u0440\\u0430\\u0439\\u043d\\u0438\\u0439 \\u0441\\u0440\\u043e\\u043a", "\\u041d\\u0430\\u0447\\u0430\\u043b\\u043e \\u0442\\u0443\\u0440\\u0430", "\\u041a\\u043e\\u043d\\u0435\\u0446 \\u0442\\u0443\\u0440\\u0430"]}}]	9	1
93	2023-09-30 13:04:39.781619+03	5	Burana tower	1	[{"added": {}}]	44	1
94	2023-09-30 13:06:05.70368+03	7	Bishkek	1	[{"added": {}}]	43	1
95	2023-09-30 13:06:42.3332+03	6	Son Kul	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": ""}}]	44	1
96	2023-09-30 13:07:11.668948+03	3	Бишкек	3		43	1
97	2023-09-30 13:07:35.616149+03	6	Jalal-Abad	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	43	1
98	2023-09-30 13:07:50.557563+03	5	Osh	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	43	1
99	2023-09-30 13:08:05.318296+03	4	Batken	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	43	1
100	2023-09-30 13:08:24.924892+03	2	Isyk-Kol	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	43	1
101	2023-09-30 13:08:39.479122+03	1	Naryn	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	43	1
102	2023-09-30 13:10:44.089454+03	7	Burana tower	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": ""}}]	44	1
103	2023-09-30 13:13:01.588091+03	8	Чем заняться в Таласе и Таласской долине – туры и достопримечательности	1	[{"added": {}}]	44	1
104	2023-09-30 13:13:12.764403+03	8	Чем заняться в Таласе и Таласской долине – туры и достопримечательности	2	[{"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": ""}}]	44	1
105	2023-09-30 13:14:32.81299+03	9	Чем заняться в Нарыне – туры и достопримечательности	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": ""}}]	44	1
106	2023-09-30 13:16:10.855371+03	11	Тур по лучшим озерам Кыргызстана	1	[{"added": {}}]	6	1
107	2023-09-30 13:22:49.472829+03	7	Культурный тур-2	2	[{"changed": {"fields": ["\\u041e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c"]}}]	6	1
108	2023-09-30 13:23:34.309047+03	12	Однодневный Тур в Киргизии - Ущелье Ала-Арча	1	[{"added": {}}]	6	1
109	2023-09-30 13:24:07.990749+03	6	Однодневные туры в Кыргызстан	2	[{"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
110	2023-09-30 13:25:50.102893+03	5	Рафтинг тур по Кыргызстану-2	2	[{"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"changed": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image", "fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	9	1
111	2023-09-30 13:26:11.351105+03	4	Рафтинг тур в Киргизии	2	[{"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
181	2023-09-30 13:54:02.562202+03	23	string string	3		28	1
112	2023-09-30 13:26:42.636101+03	3	Индивидуальные туры в Кыргызстан	2	[{"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"changed": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image", "fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	9	1
113	2023-09-30 13:27:07.921777+03	2	Классический групповой тур по Узбекистану	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"changed": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image", "fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	9	1
114	2023-09-30 13:27:39.901256+03	1	Природа и горы	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"changed": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image", "fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	9	1
115	2023-09-30 13:30:23.26491+03	13	Тимбилдинг тур 1 - “Остров Сокровищ”	1	[{"added": {}}]	6	1
116	2023-09-30 13:31:17.665668+03	14	Тимбилдинг тур 2 - “Пляжный Курс”	1	[{"added": {}}]	6	1
117	2023-09-30 13:31:57.05696+03	13	Тимбилдинг тур 1 - “Остров Сокровищ”	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	6	1
118	2023-09-30 13:32:45.790917+03	14	Тимбилдинг тур 2 - “Пляжный Курс”	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	6	1
119	2023-09-30 13:32:54.152594+03	14	Тимбилдинг тур 2 - “Пляжный Курс”	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	6	1
120	2023-09-30 13:33:41.732408+03	15	Зимняя жемчужина Кыргызстана	1	[{"added": {}}]	6	1
121	2023-09-30 13:34:19.323107+03	16	Тур на Пик Ленина	1	[{"added": {}}]	6	1
122	2023-09-30 13:34:47.31846+03	17	Пики Хан-Тенгри и Победы	1	[{"added": {}}]	6	1
123	2023-09-30 13:51:43.382239+03	2	Сomfort	1	[{"added": {}}]	25	1
124	2023-09-30 13:51:57.190639+03	1	Business	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	25	1
125	2023-09-30 13:52:15.799254+03	3	economy	1	[{"added": {}}]	25	1
126	2023-09-30 13:52:28.082547+03	3	Economy	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	25	1
127	2023-09-30 13:54:02.302597+03	77	ncdj c djnd	3		28	1
128	2023-09-30 13:54:02.306814+03	76	sidvso wertyu	3		28	1
129	2023-09-30 13:54:02.310204+03	75	sjdvlsndvl jhfvafkjbk	3		28	1
130	2023-09-30 13:54:02.313824+03	74	ыjsldf ыоаиылва	3		28	1
131	2023-09-30 13:54:02.317396+03	73	vsdlfbl abvldbkl	3		28	1
132	2023-09-30 13:54:02.321+03	72	jdnflvl aildvsdvjk	3		28	1
133	2023-09-30 13:54:02.323963+03	71	тсовт стов	3		28	1
134	2023-09-30 13:54:02.326831+03	70	acfvjsdflv@gmail.com dkfvdlfk	3		28	1
135	2023-09-30 13:54:02.330618+03	69	ьыотсjcndc сльовтслыо	3		28	1
136	2023-09-30 13:54:02.334216+03	68	фвамывам фврадмфваол	3		28	1
137	2023-09-30 13:54:02.339713+03	67	фвамывам фврадмфваол	3		28	1
138	2023-09-30 13:54:02.354612+03	66	лтсвтвNjncd вотсотв	3		28	1
139	2023-09-30 13:54:02.358273+03	65	cnd cjdc	3		28	1
140	2023-09-30 13:54:02.361847+03	64	втоосmjcdnd ьвлотвт	3		28	1
141	2023-09-30 13:54:02.364767+03	63	тсовивср оисви	3		28	1
142	2023-09-30 13:54:02.372201+03	62	vsdjvldj sdovsdjf	3		28	1
143	2023-09-30 13:54:02.381598+03	61	sjnscd ckmjdn	3		28	1
144	2023-09-30 13:54:02.385134+03	60	kjncj 111	3		28	1
145	2023-09-30 13:54:02.395085+03	59	йосврис стови	3		28	1
146	2023-09-30 13:54:02.399164+03	58	njcdbhb dwmkcjdbh	3		28	1
147	2023-09-30 13:54:02.406748+03	57	b db cdn jcdvg	3		28	1
148	2023-09-30 13:54:02.41015+03	56	djncd cncdj	3		28	1
149	2023-09-30 13:54:02.414047+03	55	ndcjncd cjdjc	3		28	1
150	2023-09-30 13:54:02.422061+03	54	jncdbdh snxhdbbch	3		28	1
151	2023-09-30 13:54:02.425561+03	53	jncbedhbev c djb	3		28	1
152	2023-09-30 13:54:02.429357+03	52	ncdnjwn cdnjcnk	3		28	1
153	2023-09-30 13:54:02.432686+03	51	ncdbhs cnjhdbjw	3		28	1
154	2023-09-30 13:54:02.435631+03	50	cnnd xkjndc	3		28	1
155	2023-09-30 13:54:02.439644+03	49	bcbd cndn	3		28	1
156	2023-09-30 13:54:02.443369+03	48	bcbsb x md c	3		28	1
157	2023-09-30 13:54:02.44685+03	47	тсвncd ссвт т	3		28	1
158	2023-09-30 13:54:02.450916+03	46	jnsnd bd scmkjdn	3		28	1
159	2023-09-30 13:54:02.458929+03	45	jncbdh jdncdhb	3		28	1
160	2023-09-30 13:54:02.463023+03	44	njcdnncd cmkdnj	3		28	1
161	2023-09-30 13:54:02.466919+03	43	ncdnhnced cmknjf	3		28	1
162	2023-09-30 13:54:02.470237+03	42	тосовтсncdncd сьотвтр	3		28	1
163	2023-09-30 13:54:02.473687+03	41	jjew cmknjcnbcd	3		28	1
164	2023-09-30 13:54:02.476879+03	40	string string	3		28	1
165	2023-09-30 13:54:02.479857+03	39	string string	3		28	1
166	2023-09-30 13:54:02.483426+03	38	cdncd cdncdj	3		28	1
167	2023-09-30 13:54:02.486556+03	37	string string	3		28	1
168	2023-09-30 13:54:02.489978+03	36	тосвотсвр сьвтс	3		28	1
169	2023-09-30 13:54:02.492901+03	35	string string	3		28	1
170	2023-09-30 13:54:02.495898+03	34	string string	3		28	1
171	2023-09-30 13:54:02.502746+03	33	тосвтрсв ьвсмоатр	3		28	1
172	2023-09-30 13:54:02.518094+03	32	string string	3		28	1
173	2023-09-30 13:54:02.524817+03	31	string string	3		28	1
174	2023-09-30 13:54:02.530404+03	30	string string	3		28	1
175	2023-09-30 13:54:02.538978+03	29	string string	3		28	1
176	2023-09-30 13:54:02.542409+03	28	string string	3		28	1
177	2023-09-30 13:54:02.546174+03	27	string string	3		28	1
178	2023-09-30 13:54:02.550181+03	26	string string	3		28	1
179	2023-09-30 13:54:02.553181+03	25	string string	3		28	1
180	2023-09-30 13:54:02.556141+03	24	string string	3		28	1
185	2023-09-30 13:54:02.577537+03	19	ndb dnccdn	3		28	1
186	2023-09-30 13:54:02.581896+03	18	йствknfvjnd сьвот	3		28	1
187	2023-09-30 13:54:02.592602+03	17	NDCJNnj jnNCJN	3		28	1
188	2023-09-30 13:54:02.597326+03	16	njcbdbw c d n	3		28	1
189	2023-09-30 13:54:02.600301+03	15	ncdnj ndncdj	3		28	1
190	2023-09-30 13:54:02.604797+03	14	ncndjw cmkndj	3		28	1
191	2023-09-30 13:54:02.609214+03	13	товтво всовт	3		28	1
192	2023-09-30 13:54:02.614253+03	12	x dh cdbhd	3		28	1
193	2023-09-30 13:54:02.61929+03	11	ndnj cnjdn	3		28	1
194	2023-09-30 13:54:02.622671+03	10	kxdjnc cmkdnj	3		28	1
195	2023-09-30 13:54:02.638652+03	9	kmsncs ,cm	3		28	1
196	2023-09-30 13:54:02.641767+03	8	nnsc cmdnj	3		28	1
197	2023-09-30 13:54:02.644945+03	7	jncdnjhcd cmkndj	3		28	1
198	2023-09-30 13:54:02.64745+03	6	jncdnjhcd cmkndj	3		28	1
199	2023-09-30 13:54:02.650565+03	5	Chyngy Mirlan uulu	3		28	1
200	2023-09-30 13:54:02.653298+03	4	Chyngyz Mirlan uulu	3		28	1
201	2023-09-30 13:55:33.966131+03	2	Bentley	1	[{"added": {}}]	23	1
202	2023-09-30 13:57:14.821124+03	2	bentley motors	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "bentley motors"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430 \\u0430\\u0440\\u0435\\u043d\\u0434\\u044b", "object": "bentley motors"}}]	24	1
203	2023-09-30 13:58:14.795963+03	3	Bugatti	1	[{"added": {}}]	23	1
204	2023-09-30 13:58:43.189372+03	3	Bugatti chiron	1	[{"added": {}}]	24	1
205	2023-09-30 13:59:11.612388+03	3	Bugatti chiron	2	[{"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Bugatti chiron"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430 \\u0430\\u0440\\u0435\\u043d\\u0434\\u044b", "object": "Bugatti chiron"}}]	24	1
206	2023-09-30 13:59:52.840202+03	4	Acura	1	[{"added": {}}]	23	1
207	2023-09-30 14:00:37.809186+03	4	Acura nsx	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Acura nsx"}}]	24	1
208	2023-09-30 14:00:50.109126+03	4	Acura nsx	2	[{"added": {"name": "\\u0426\\u0435\\u043d\\u0430 \\u0430\\u0440\\u0435\\u043d\\u0434\\u044b", "object": "Acura nsx"}}]	24	1
209	2023-09-30 14:01:18.572714+03	5	Alfa Romeo	1	[{"added": {}}]	23	1
210	2023-09-30 14:02:12.260456+03	5	Alfa Romeo	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Alfa Romeo"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430 \\u0430\\u0440\\u0435\\u043d\\u0434\\u044b", "object": "Alfa Romeo"}}]	24	1
211	2023-09-30 14:02:54.565211+03	6	Audi A8	1	[{"added": {}}]	23	1
212	2023-09-30 14:04:21.897077+03	6	Audi A8	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Audi A8"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430 \\u0430\\u0440\\u0435\\u043d\\u0434\\u044b", "object": "Audi A8"}}]	24	1
213	2023-09-30 14:05:15.920279+03	7	Chevrolet Spark	1	[{"added": {}}]	23	1
214	2023-09-30 14:11:24.021013+03	1	Настройки создания тура	2	[{"changed": {"name": "\\u0422\\u0440\\u0430\\u043d\\u0441\\u043f\\u043e\\u0440\\u0442", "object": "SUV", "fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}, {"changed": {"name": "\\u0422\\u0440\\u0430\\u043d\\u0441\\u043f\\u043e\\u0440\\u0442", "object": "4WD", "fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}, {"changed": {"name": "\\u0422\\u0440\\u0430\\u043d\\u0441\\u043f\\u043e\\u0440\\u0442", "object": "Sprinter (up to 16)", "fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}, {"changed": {"name": "\\u0422\\u0440\\u0430\\u043d\\u0441\\u043f\\u043e\\u0440\\u0442", "object": "Minivan (up to 6)", "fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	40	1
215	2023-09-30 14:13:28.898949+03	1	Настройки создания тура	2	[{"added": {"name": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "object": "Nomad life tour"}}, {"added": {"name": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "object": "Around the lake tour"}}, {"added": {"name": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "object": "International Asia tour"}}, {"changed": {"name": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "object": "Eco tourism", "fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}, {"deleted": {"name": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "object": "preferred tour"}}]	40	1
216	2023-09-30 14:19:35.899071+03	2	Slider object (2)	1	[{"added": {}}]	12	1
217	2023-09-30 14:19:54.420219+03	2	Slider object (2)	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	12	1
218	2023-09-30 14:20:10.383726+03	2	Slider object (2)	2	[{"changed": {"fields": ["\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0441\\u0442\\u044c"]}}]	12	1
219	2023-09-30 14:21:14.918437+03	1	Slider object (1)	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0434\\u0437\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a"]}}]	12	1
220	2023-09-30 14:47:42.112577+03	1	Slider object (1)	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	12	1
221	2023-09-30 14:48:04.835343+03	1	Slider object (1)	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	12	1
222	2023-09-30 14:52:07.577865+03	1	Slider object (1)	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	12	1
223	2023-09-30 14:52:21.625866+03	1	Slider object (1)	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	12	1
224	2023-09-30 14:52:47.998862+03	1	Slider object (1)	2	[{"changed": {"fields": ["\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a"]}}]	12	1
225	2023-09-30 14:55:05.572374+03	2	Slider object (2)	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	12	1
226	2023-09-30 14:55:05.87703+03	2	Slider object (2)	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	12	1
227	2023-09-30 14:55:23.464917+03	2	Slider object (2)	2	[{"changed": {"fields": ["\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a", "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	12	1
228	2023-09-30 14:56:47.46325+03	2	Slider object (2)	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	12	1
229	2023-09-30 14:56:59.219492+03	2	Slider object (2)	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	12	1
230	2023-09-30 15:08:53.493518+03	2	Slider object (2)	2	[{"changed": {"fields": ["\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0441\\u0442\\u044c"]}}]	12	1
231	2023-09-30 15:09:01.99547+03	2	Slider object (2)	2	[{"changed": {"fields": ["\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0441\\u0442\\u044c"]}}]	12	1
232	2023-09-30 15:14:21.867828+03	2	Slider object (2)	2	[{"changed": {"fields": ["\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0441\\u0442\\u044c"]}}]	12	1
233	2023-09-30 15:14:28.008117+03	2	Slider object (2)	2	[{"changed": {"fields": ["\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0441\\u0442\\u044c"]}}]	12	1
234	2023-09-30 15:15:21.67692+03	2	Slider object (2)	3		12	1
235	2023-09-30 15:20:32.587577+03	3	Slider object (3)	1	[{"added": {}}]	12	1
236	2023-09-30 15:22:34.305904+03	6	Однодневные туры в Кыргызстан	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
237	2023-09-30 15:23:13.779868+03	6	Однодневные туры в Кыргызстан	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
238	2023-09-30 15:28:05.090385+03	7	Test tour	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1000"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
239	2023-09-30 15:28:47.444586+03	7	Test tour	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
240	2023-09-30 15:28:53.989428+03	1	Природа и горы	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
241	2023-09-30 15:31:40.195745+03	81	Test Test	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	28	1
242	2023-09-30 15:32:23.903147+03	7	Test tour	2	[{"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1200"}}]	9	1
243	2023-09-30 15:32:34.501089+03	81	Test Test	2	[{"changed": {"fields": ["\\u0414\\u0430\\u0442\\u0430 \\u043e\\u043a\\u043e\\u043d\\u0447\\u0430\\u043d\\u0438\\u044f"]}}]	28	1
244	2023-09-30 15:39:26.356305+03	6	Test	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	10	1
245	2023-09-30 15:40:44.097534+03	1	Настройки создания тура	2	[{"added": {"name": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "object": "Osh"}}]	40	1
246	2023-09-30 15:41:30.003861+03	1	Настройки создания тура	2	[{"deleted": {"name": "\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435", "object": "\\u041f\\u043e\\u043b\\u0443\\u043f\\u0430\\u043d\\u0441\\u0438\\u043e\\u043d"}}, {"deleted": {"name": "\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435", "object": "\\u041f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u041f\\u0430\\u043d\\u0441\\u0438\\u043e\\u043d"}}, {"deleted": {"name": "\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435", "object": "\\u0423\\u043b\\u044c\\u0442\\u0440\\u0430 \\u0412\\u0441\\u0435 \\u0412\\u043a\\u043b"}}]	40	1
247	2023-09-30 15:44:16.026431+03	1	Настройки создания тура	2	[{"added": {"name": "\\u0420\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u0435", "object": "Guest house"}}, {"added": {"name": "\\u0420\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u0435", "object": "Family stay"}}]	40	1
248	2023-09-30 15:47:40.098637+03	4	Acura nsx	2	[{"changed": {"fields": ["\\u041a\\u043e\\u043d\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u0435\\u0440", "\\u042d\\u043a\\u043e\\u043d\\u043e\\u043c\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c", "\\u041a\\u0430\\u043c\\u0435\\u0440\\u0430 \\u0437\\u0430\\u0434\\u043d\\u0435\\u0433\\u043e \\u0432\\u0438\\u0434\\u0430"]}}]	24	1
249	2023-09-30 15:51:51.661893+03	4	Acura nsx	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	24	1
250	2023-09-30 15:52:28.422298+03	4	SUV	1	[{"added": {}}]	25	1
251	2023-09-30 15:52:47.317368+03	8	Tayota	1	[{"added": {}}]	23	1
252	2023-09-30 15:53:58.520628+03	7	Sequoia	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Sequoia"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430 \\u0430\\u0440\\u0435\\u043d\\u0434\\u044b", "object": "Sequoia"}}]	24	1
253	2023-09-30 15:54:24.040445+03	6	Audi A8	2	[{"changed": {"fields": ["\\u0422\\u0438\\u043f \\u0430\\u0432\\u0442\\u043e"]}}]	24	1
254	2023-09-30 15:56:00.914196+03	81	Test Test	2	[]	28	1
255	2023-09-30 15:58:33.91123+03	4	5 областей	2	[{"changed": {"fields": ["\\u041e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c"]}}]	8	1
256	2023-09-30 16:01:32.881497+03	82	1 1	1	[{"added": {}}]	28	1
257	2023-09-30 16:02:22.138589+03	8		2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	33	1
258	2023-09-30 16:03:30.521589+03	81	Test Test	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	28	1
259	2023-09-30 16:03:44.363274+03	81	Test Test	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	28	1
260	2023-09-30 16:04:48.539372+03	82	1 1	2	[{"changed": {"fields": ["\\u0410\\u0432\\u0442\\u043e"]}}]	28	1
261	2023-09-30 16:05:07.423211+03	7	Burana tower	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
262	2023-09-30 16:06:19.975867+03	7	Burana tower	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430", "\\u041f\\u0440\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u044b"]}}]	44	1
263	2023-10-02 12:41:31.895271+03	2	Классический групповой тур по Узбекистану	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"changed": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1299", "fields": ["\\u041a\\u0440\\u0430\\u0439\\u043d\\u0438\\u0439 \\u0441\\u0440\\u043e\\u043a", "\\u041d\\u0430\\u0447\\u0430\\u043b\\u043e \\u0442\\u0443\\u0440\\u0430", "\\u041a\\u043e\\u043d\\u0435\\u0446 \\u0442\\u0443\\u0440\\u0430"]}}]	9	1
264	2023-10-02 12:42:47.110417+03	1	Природа и горы	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}, {"changed": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1000", "fields": ["\\u041a\\u0440\\u0430\\u0439\\u043d\\u0438\\u0439 \\u0441\\u0440\\u043e\\u043a", "\\u041d\\u0430\\u0447\\u0430\\u043b\\u043e \\u0442\\u0443\\u0440\\u0430", "\\u041a\\u043e\\u043d\\u0435\\u0446 \\u0442\\u0443\\u0440\\u0430"]}}]	9	1
265	2023-10-02 22:30:32.363831+03	5	Рафтинг тур по Кыргызстану-2	2	[{"changed": {"fields": ["\\u0422\\u0438\\u043f \\u0442\\u0443\\u0440\\u0430"]}}]	9	1
266	2023-10-02 22:30:51.890328+03	1	Природа и горы	2	[{"changed": {"fields": ["\\u0422\\u0438\\u043f \\u0442\\u0443\\u0440\\u0430", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	9	1
267	2023-10-03 00:02:58.708447+03	5	Рафтинг тур по Кыргызстану-2	2	[{"changed": {"fields": ["\\u0422\\u0438\\u043f \\u0442\\u0443\\u0440\\u0430"]}}]	9	1
268	2023-10-03 00:03:09.845374+03	3	Индивидуальные туры в Кыргызстан	2	[{"changed": {"fields": ["\\u0422\\u0438\\u043f \\u0442\\u0443\\u0440\\u0430"]}}]	9	1
358	2023-10-03 11:51:34.554909+03	164	jhcdnhw cnhb	3		28	1
359	2023-10-03 11:51:34.559958+03	163	jicdnjncdj mkcnfj	3		28	1
459	2023-10-09 13:48:22.761676+03	3		3		33	1
269	2023-10-03 00:03:35.207649+03	2	Классический групповой тур по Узбекистану	2	[{"changed": {"fields": ["\\u0422\\u0438\\u043f \\u0442\\u0443\\u0440\\u0430", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
270	2023-10-03 11:18:47.967825+03	161	kjcdjn cjkjcd	3		28	1
271	2023-10-03 11:18:47.973203+03	160	mdjdnj xmkdnjckmcdjn	3		28	1
272	2023-10-03 11:18:47.976062+03	159	mdjdnj xmkdnjckmcdjn	3		28	1
273	2023-10-03 11:18:47.979803+03	158	шовусит соврт	3		28	1
274	2023-10-03 11:18:47.984744+03	157	ilim adik	3		28	1
275	2023-10-03 11:18:47.988075+03	156	ijncdnj micdjnv	3		28	1
276	2023-10-03 11:18:47.991532+03	155	ijjncdh mcjdn	3		28	1
277	2023-10-03 11:18:47.995236+03	154	dujw cjndsjn	3		28	1
278	2023-10-03 11:18:47.998732+03	153	jndedn cmknjs	3		28	1
279	2023-10-03 11:18:48.001625+03	152	ijfjdnj ckdfjn	3		28	1
280	2023-10-03 11:18:48.007712+03	151	щ92929929 тоир	3		28	1
281	2023-10-03 11:18:48.010819+03	150	свто слвт	3		28	1
282	2023-10-03 11:18:48.013976+03	149	ncdn cknd	3		28	1
283	2023-10-03 11:18:48.018246+03	148	jdciu cmjnd CNjicdj	3		28	1
284	2023-10-03 11:18:48.021391+03	147	njsh jdcnhdi	3		28	1
285	2023-10-03 11:18:48.023934+03	146	тсвотmkd всьовт	3		28	1
286	2023-10-03 11:18:48.026982+03	145	тсвотvfn тсвто	3		28	1
287	2023-10-03 11:18:48.040413+03	144	ттыоцтNnjdejw вьловут	3		28	1
288	2023-10-03 11:18:48.043548+03	143	jdcnjd cndjnd	3		28	1
289	2023-10-03 11:18:48.046631+03	142	ncdbb cnbhd	3		28	1
290	2023-10-03 11:18:48.049579+03	141	jncdnj cmdjd	3		28	1
291	2023-10-03 11:18:48.052141+03	140	ihdwu cjicdh	3		28	1
292	2023-10-03 11:18:48.055374+03	139	kjncdb cmdjb	3		28	1
293	2023-10-03 11:18:48.058393+03	138	твотвм слвто	3		28	1
294	2023-10-03 11:18:48.061304+03	137	jndbh cdkdh	3		28	1
295	2023-10-03 11:18:48.063814+03	136	mcdnnj l,ckdnj	3		28	1
296	2023-10-03 11:18:48.066751+03	135	idnfjn mvfnj	3		28	1
297	2023-10-03 11:18:48.069751+03	134	njdcbh njcdhb	3		28	1
298	2023-10-03 11:18:48.072182+03	133	idcj cdjn	3		28	1
299	2023-10-03 11:18:48.07514+03	132	djfsl маодывамо	3		28	1
300	2023-10-03 11:18:48.078066+03	131	dfsfns,d ыамыдо	3		28	1
301	2023-10-03 11:18:48.083062+03	130	sfbdb впиыа	3		28	1
302	2023-10-03 11:18:48.086256+03	129	dfjlfn dkfvlsfl	3		28	1
303	2023-10-03 11:18:48.089932+03	128	dfbdn dbndjl	3		28	1
304	2023-10-03 11:18:48.110699+03	127	dfbknfl djlflkvn	3		28	1
305	2023-10-03 11:18:48.115169+03	126	dkjfk zfkbl	3		28	1
306	2023-10-03 11:18:48.118491+03	125	ыадыдвт вамоды	3		28	1
307	2023-10-03 11:18:48.121652+03	124	dfdlfmk skfvks	3		28	1
308	2023-10-03 11:18:48.124382+03	123	slnvlandv jdfva	3		28	1
309	2023-10-03 11:18:48.128272+03	122	xvsvkl jdf lxk	3		28	1
310	2023-10-03 11:18:48.131474+03	121	djlfsndlkn воадтдлыв	3		28	1
311	2023-10-03 11:18:48.134676+03	120	jsfvsjn одсаыомтыдв	3		28	1
312	2023-10-03 11:18:48.141802+03	119	xfdfvnsldvnsldnvs ЫАМЫМТЫОВТО	3		28	1
313	2023-10-03 11:18:48.145198+03	118	dklfslfkm dflvldf	3		28	1
314	2023-10-03 11:18:48.148164+03	117	kmnmcdjn cmkjdn	3		28	1
315	2023-10-03 11:18:48.151652+03	116	kmcdjjnd cmkdjn	3		28	1
316	2023-10-03 11:18:48.159717+03	115	лтсу ьсовтсв	3		28	1
317	2023-10-03 11:18:48.16293+03	114	jbcdbhc dnjdhb	3		28	1
318	2023-10-03 11:18:48.166583+03	113	kmcdnj cmkdn	3		28	1
319	2023-10-03 11:18:48.169434+03	112	ksjn cdmkjnd	3		28	1
320	2023-10-03 11:18:48.17776+03	111	jncjdc dcmdjn	3		28	1
321	2023-10-03 11:18:48.181365+03	110	KNCDNJ C,LDNJ	3		28	1
322	2023-10-03 11:18:48.18392+03	109	jnncdhbc cmkdjnh	3		28	1
323	2023-10-03 11:18:48.189243+03	108	njncdnj cmdjn	3		28	1
324	2023-10-03 11:18:48.192957+03	107	kncen mddnj	3		28	1
325	2023-10-03 11:18:48.19588+03	106	jknncdbh xmcdb	3		28	1
326	2023-10-03 11:18:48.199005+03	105	lmcdnjw c,nd	3		28	1
327	2023-10-03 11:18:48.202262+03	104	ijcdjwe ijed	3		28	1
328	2023-10-03 11:18:48.205897+03	103	njcdjnw cdmkjndc	3		28	1
329	2023-10-03 11:18:48.209541+03	102	тсвотмвMncdj сьлвот	3		28	1
330	2023-10-03 11:18:48.212988+03	101	лтсовт сьтвс	3		28	1
331	2023-10-03 11:18:48.215883+03	100	лоосвотcdj слств	3		28	1
332	2023-10-03 11:18:48.219361+03	99	kmncdj cmfnc	3		28	1
333	2023-10-03 11:18:48.227063+03	98	kmkmcdjncd cdmdnj	3		28	1
334	2023-10-03 11:18:48.230396+03	97	njcdnj cdmfnj	3		28	1
335	2023-10-03 11:18:48.234647+03	96	kcdnj ckjdnc	3		28	1
336	2023-10-03 11:18:48.237794+03	95	kmdmd сьотв	3		28	1
337	2023-10-03 11:18:48.241046+03	94	лььвсоMk сьлвот	3		28	1
338	2023-10-03 11:18:48.244252+03	93	jjncjdnw djndc	3		28	1
339	2023-10-03 11:18:48.247668+03	92	kkcjd kmxjndc	3		28	1
340	2023-10-03 11:18:48.251334+03	91	knjcjnjc cmjjnd	3		28	1
341	2023-10-03 11:18:48.255278+03	90	njdjcej djne	3		28	1
342	2023-10-03 11:18:48.25856+03	89	kncd kxjdhc	3		28	1
343	2023-10-03 11:18:48.261513+03	88	тосотmk сьлотв	3		28	1
344	2023-10-03 11:18:48.266085+03	87	лтсотn свшов	3		28	1
345	2023-10-03 11:18:48.26959+03	86	щтсовт слтов	3		28	1
346	2023-10-03 11:18:48.272213+03	85	тсто сльвтр	3		28	1
347	2023-10-03 11:18:48.275649+03	84	тстсцkncd стовтв	3		28	1
348	2023-10-03 11:18:48.279045+03	83	цтотцkcjn свтв	3		28	1
349	2023-10-03 11:18:48.286827+03	82	1 1	3		28	1
350	2023-10-03 11:18:48.290778+03	81	Test Test	3		28	1
351	2023-10-03 11:18:48.294047+03	80	cj cdndk	3		28	1
352	2023-10-03 11:18:48.298594+03	79	jncdhb cnjdn	3		28	1
353	2023-10-03 11:18:48.302361+03	78	JCDQJIj njd	3		28	1
354	2023-10-03 11:20:16.938591+03	162	jjncdbnw dnjnecd	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	28	1
355	2023-10-03 11:29:04.751289+03	163	jicdnjncdj mkcnfj	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	28	1
356	2023-10-03 11:33:30.80404+03	164	jhcdnhw cnhb	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	28	1
357	2023-10-03 11:44:09.141917+03	1	Природа и горы	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430 \\u043d\\u0430 \\u044e\\u0442\\u0443\\u0431"]}}]	9	1
360	2023-10-03 11:51:34.563686+03	162	jjncdbnw dnjnecd	3		28	1
361	2023-10-03 11:52:34.579798+03	166	свот ьслвог	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	28	1
362	2023-10-03 11:52:34.585099+03	165	свот ьслвог	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	28	1
363	2023-10-03 11:55:12.886414+03	167	ncdnnwj cmkjnd	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	28	1
364	2023-10-03 12:41:48.004673+03	6	Однодневные туры в Кыргызстан	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
365	2023-10-03 12:43:29.804191+03	7	Test tour	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
366	2023-10-03 12:45:59.047982+03	17	Пики Хан-Тенгри и Победы	3		6	1
367	2023-10-03 12:45:59.06328+03	16	Тур на Пик Ленина	3		6	1
368	2023-10-03 12:45:59.068293+03	15	Зимняя жемчужина Кыргызстана	3		6	1
369	2023-10-03 12:45:59.071516+03	14	Тимбилдинг тур 2 - “Пляжный Курс”	3		6	1
370	2023-10-03 12:45:59.075375+03	13	Тимбилдинг тур 1 - “Остров Сокровищ”	3		6	1
371	2023-10-03 12:45:59.078397+03	12	Однодневный Тур в Киргизии - Ущелье Ала-Арча	3		6	1
372	2023-10-03 12:45:59.082368+03	11	Тур по лучшим озерам Кыргызстана	3		6	1
373	2023-10-03 12:45:59.085976+03	10	Однодневный Тур в Киргизии - Ущелье Ала-Арча	3		6	1
374	2023-10-03 12:45:59.090465+03	5	Искусство и Традиции	3		6	1
375	2023-10-03 12:45:59.095927+03	3	Классика Кыргызстана	3		6	1
376	2023-10-03 12:45:59.105056+03	2	Классика Кыргызстана	3		6	1
377	2023-10-03 13:07:53.654053+03	1	Ыссык-Кол	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	6	1
378	2023-10-03 13:09:07.651681+03	4	Нарын	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435", "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	6	1
379	2023-10-03 13:09:33.400501+03	6	Чуй	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	6	1
380	2023-10-03 13:09:47.789217+03	7	Талас	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	6	1
381	2023-10-03 13:09:56.999138+03	8	Ош	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	6	1
382	2023-10-03 13:10:43.778003+03	9	Жалела-Абад	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	6	1
383	2023-10-03 13:10:53.950228+03	9	Жалал-Абад	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	6	1
384	2023-10-03 13:11:36.227731+03	18	Баткен	1	[{"added": {}}]	6	1
385	2023-10-03 15:00:40.632889+03	1	Природа и горы	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430 \\u043d\\u0430 \\u044e\\u0442\\u0443\\u0431"]}}]	9	1
386	2023-10-03 15:02:10.362095+03	1	Природа и горы	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430 \\u043d\\u0430 \\u044e\\u0442\\u0443\\u0431"]}}]	9	1
387	2023-10-04 09:41:49.957911+03	5	Alfa Romeo	2	[{"deleted": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Alfa Romeo"}}]	24	1
388	2023-10-04 09:49:18.997528+03	5	Alfa Romeo	2	[{"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Alfa Romeo"}}]	24	1
389	2023-10-04 09:54:21.555455+03	9	Mercedes	1	[{"added": {}}]	23	1
390	2023-10-04 09:56:28.189918+03	8	Mercedes S-Class	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Mercedes S-Class"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430 \\u0430\\u0440\\u0435\\u043d\\u0434\\u044b", "object": "Mercedes S-Class"}}]	24	1
391	2023-10-04 14:26:12.784323+03	6	Hors riding tour	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435", "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	6	1
392	2023-10-04 14:26:57.266807+03	7	Test tour	2	[{"changed": {"fields": ["\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"]}}]	9	1
393	2023-10-04 14:27:54.140277+03	7	Великолепный век	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	43	1
394	2023-10-04 14:39:32.787313+03	8	Test tour	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "122"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
395	2023-10-04 14:43:54.238832+03	12		2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	33	1
396	2023-10-04 14:53:01.943536+03	8	Hors riding tour	1	[{"added": {}}]	43	1
397	2023-10-04 14:55:38.473921+03	9	Чем заняться в Нарыне – туры и достопримечательности	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440", "\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
398	2023-10-04 14:57:22.318975+03	8	Mercedes S-Class	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	24	1
399	2023-10-04 14:57:36.956587+03	8	Mercedes S-Class	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	24	1
400	2023-10-04 14:59:03.613264+03	8	Mercedes S-Class	2	[{"changed": {"fields": ["\\u041a\\u043e\\u043d\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u0435\\u0440", "\\u042d\\u043a\\u043e\\u043d\\u043e\\u043c\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c", "\\u041a\\u0430\\u043c\\u0435\\u0440\\u0430 \\u0437\\u0430\\u0434\\u043d\\u0435\\u0433\\u043e \\u0432\\u0438\\u0434\\u0430", "Bluetooth"]}}]	24	1
401	2023-10-04 14:59:46.582787+03	8	Mercedes S-Class	2	[{"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Mercedes S-Class"}}]	24	1
402	2023-10-04 15:00:31.839295+03	8	Mercedes S-Class	2	[{"deleted": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Mercedes S-Class"}}]	24	1
403	2023-10-04 15:06:40.294638+03	3	Slider object (3)	2	[{"changed": {"fields": ["\\u0422\\u0443\\u0440 \\u043d\\u0430 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u0441\\u0441\\u044b\\u043b\\u0430\\u0435\\u0442\\u0441\\u044f \\u0441\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440"]}}]	12	1
404	2023-10-04 15:07:50.989153+03	4	Slider object (4)	1	[{"added": {}}]	12	1
405	2023-10-04 15:09:19.121349+03	4	Slider object (4)	3		12	1
406	2023-10-04 17:44:03.215301+03	3	Economy	3		25	1
407	2023-10-04 17:44:38.110186+03	4	All cars	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	25	1
458	2023-10-09 13:48:22.757683+03	4		3		33	1
408	2023-10-04 17:47:41.935715+03	6	Chuy region	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435", "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	6	1
409	2023-10-04 17:48:31.31592+03	9	Чем заняться в Нарыне – туры и достопримечательности	3		44	1
410	2023-10-04 17:51:39.860958+03	5	Slider object (5)	1	[{"added": {}}]	12	1
411	2023-10-04 18:21:07.906461+03	6	Chuy region	2	[{"changed": {"fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	6	1
412	2023-10-05 11:36:15.936433+03	1	Посещения в первый раз	1	[{"added": {}}]	31	1
413	2023-10-05 11:36:50.240188+03	1	Посещения в первый раз	2	[{"added": {"name": "\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441 \\u0438 \\u043e\\u0442\\u0432\\u0435\\u0442\\u0435\\u0442", "object": "\\u041f\\u043e\\u0441\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u0432 \\u043f\\u0435\\u0440\\u0432\\u044b\\u0439 \\u0440\\u0430\\u0437"}}]	31	1
414	2023-10-05 11:37:25.493079+03	1	Посещения в первый раз	2	[{"changed": {"name": "\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441 \\u0438 \\u043e\\u0442\\u0432\\u0435\\u0442\\u0435\\u0442", "object": "\\u041f\\u043e\\u0441\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u0432 \\u043f\\u0435\\u0440\\u0432\\u044b\\u0439 \\u0440\\u0430\\u0437", "fields": ["\\u041e\\u0442\\u0432\\u0435\\u0442"]}}]	31	1
415	2023-10-05 11:40:23.109842+03	2	Транспорт	1	[{"added": {}}, {"added": {"name": "\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441 \\u0438 \\u043e\\u0442\\u0432\\u0435\\u0442\\u0435\\u0442", "object": "\\u0422\\u0440\\u0430\\u043d\\u0441\\u043f\\u043e\\u0440\\u0442"}}]	31	1
416	2023-10-05 11:40:45.281392+03	2	Транспорт	2	[]	31	1
417	2023-10-05 11:41:53.576512+03	3	Размещение	1	[{"added": {}}, {"added": {"name": "\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441 \\u0438 \\u043e\\u0442\\u0432\\u0435\\u0442\\u0435\\u0442", "object": "\\u041a\\u0430\\u043a\\u043e\\u0439 \\u0443\\u0440\\u043e\\u0432\\u0435\\u043d\\u044c \\u043a\\u043e\\u043c\\u0444\\u043e\\u0440\\u0442\\u0430 \\u0438 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u0435\\u043d \\u0434\\u043b\\u044f \\u0432\\u044b\\u0431\\u043e\\u0440\\u0430?"}}]	31	1
418	2023-10-05 11:44:16.46112+03	3	Размещение	2	[{"added": {"name": "\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441 \\u0438 \\u043e\\u0442\\u0432\\u0435\\u0442\\u0435\\u0442", "object": "\\u041a\\u0430\\u043a\\u043e\\u0432\\u044b \\u043f\\u0440\\u0435\\u0438\\u043c\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0430 \\u0438\\u043d\\u0434\\u0438\\u0432\\u0438\\u0434\\u0443\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0442\\u0443\\u0440\\u043e\\u0432 \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0433\\u0440\\u0443\\u043f\\u043f\\u043e\\u0432\\u044b\\u043c\\u0438?"}}, {"added": {"name": "\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441 \\u0438 \\u043e\\u0442\\u0432\\u0435\\u0442\\u0435\\u0442", "object": "\\u0415\\u0441\\u0442\\u044c \\u043b\\u0438 \\u043e\\u043f\\u0446\\u0438\\u0438 \\u0434\\u043b\\u044f \\u0430\\u0440\\u0435\\u043d\\u0434\\u044b \\u0430\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044f \\u0438\\u043b\\u0438 \\u0433\\u0438\\u0434\\u0430 \\u0441 \\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c?"}}, {"added": {"name": "\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441 \\u0438 \\u043e\\u0442\\u0432\\u0435\\u0442\\u0435\\u0442", "object": "\\u0415\\u0441\\u0442\\u044c \\u043b\\u0438 \\u043e\\u043f\\u0446\\u0438\\u0438 \\u0434\\u043b\\u044f \\u0430\\u0440\\u0435\\u043d\\u0434\\u044b \\u0430\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044f \\u0438\\u043b\\u0438 \\u0433\\u0438\\u0434\\u0430 \\u0441 \\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u043c?"}}]	31	1
419	2023-10-05 15:33:19.593207+03	177	kmcfnjqndc cknmj	2	[]	28	1
420	2023-10-05 15:35:28.187711+03	177	kmcfnjqndc cknmj	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	28	1
421	2023-10-05 19:15:44.137222+03	178	salasm salam	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	28	1
422	2023-10-05 19:18:03.65447+03	179	salam salam salam	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	28	1
423	2023-10-06 02:15:19.585388+03	1	Природа и горы	3		9	1
424	2023-10-06 02:19:20.241902+03	9	Природа и горы	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1000"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
425	2023-10-06 13:57:52.865956+03	9	Природа и горы	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430 \\u043d\\u0430 \\u044e\\u0442\\u0443\\u0431"]}}]	9	1
426	2023-10-09 13:42:09.705226+03	8	Test tour	3		9	1
427	2023-10-09 13:42:09.720016+03	6	Однодневные туры в Кыргызстан	3		9	1
428	2023-10-09 13:42:09.730228+03	5	Рафтинг тур по Кыргызстану-2	3		9	1
429	2023-10-09 13:42:09.739955+03	4	Рафтинг тур в Киргизии	3		9	1
430	2023-10-09 13:42:09.744577+03	3	Индивидуальные туры в Кыргызстан	3		9	1
431	2023-10-09 13:42:09.747818+03	2	Классический групповой тур по Узбекистану	3		9	1
432	2023-10-09 13:43:29.790088+03	9	Природа и горы	3		9	1
433	2023-10-09 13:43:29.79617+03	7	Test tour	3		9	1
434	2023-10-09 13:46:03.815962+03	8	Mercedes S-Class	3		24	1
435	2023-10-09 13:46:03.82048+03	7	Sequoia	3		24	1
436	2023-10-09 13:46:03.823622+03	6	Audi A8	3		24	1
437	2023-10-09 13:46:03.827567+03	5	Alfa Romeo	3		24	1
438	2023-10-09 13:46:03.838325+03	4	Acura nsx	3		24	1
439	2023-10-09 13:46:03.843115+03	3	Bugatti chiron	3		24	1
440	2023-10-09 13:46:03.858686+03	2	bentley motors	3		24	1
441	2023-10-09 13:46:03.862524+03	1	M5	3		24	1
442	2023-10-09 13:47:23.711298+03	18	Баткен	3		6	1
443	2023-10-09 13:47:23.718807+03	9	Жалал-Абад	3		6	1
444	2023-10-09 13:47:23.723046+03	8	Ош	3		6	1
445	2023-10-09 13:47:23.726884+03	7	Талас	3		6	1
446	2023-10-09 13:47:23.730327+03	6	Chuy region	3		6	1
447	2023-10-09 13:47:23.73399+03	4	Нарын	3		6	1
448	2023-10-09 13:47:23.738296+03	1	Ыссык-Кол	3		6	1
449	2023-10-09 13:48:22.713688+03	14		3		33	1
450	2023-10-09 13:48:22.724056+03	13		3		33	1
451	2023-10-09 13:48:22.727792+03	12		3		33	1
452	2023-10-09 13:48:22.732068+03	11		3		33	1
453	2023-10-09 13:48:22.740088+03	10		3		33	1
454	2023-10-09 13:48:22.74425+03	9		3		33	1
455	2023-10-09 13:48:22.747984+03	8		3		33	1
456	2023-10-09 13:48:22.751656+03	6		3		33	1
457	2023-10-09 13:48:22.754881+03	5		3		33	1
460	2023-10-09 13:48:22.766845+03	2		3		33	1
461	2023-10-09 13:48:22.773226+03	1		3		33	1
462	2023-10-09 13:49:40.388872+03	8	Чем заняться в Таласе и Таласской долине – туры и достопримечательности	3		44	1
463	2023-10-09 13:49:40.394506+03	7	Burana tower	3		44	1
464	2023-10-09 13:49:40.397561+03	6	Son Kul	3		44	1
465	2023-10-09 13:49:40.401209+03	3	Жалал-Абадда 130га жакын жаранга жүрөк операциясы бекер жасалат	3		44	1
466	2023-10-09 13:49:40.408126+03	2	Ошто шаар күнүнө карата чет элдик ырчылардын катышуусунда гала-концерт өтөт	3		44	1
467	2023-10-09 13:49:40.411543+03	1	Article_1	3		44	1
468	2023-10-09 13:50:45.611415+03	8	Hors riding tour	3		43	1
469	2023-10-09 13:50:45.617072+03	7	Великолепный век	3		43	1
470	2023-10-09 13:50:45.620747+03	6	Jalal-Abad	3		43	1
471	2023-10-09 13:50:45.624091+03	5	Osh	3		43	1
472	2023-10-09 13:50:45.627339+03	4	Batken	3		43	1
473	2023-10-09 13:50:45.630768+03	1	Naryn	3		43	1
474	2023-10-09 13:58:32.884863+03	6	Slider object (6)	1	[{"added": {}}]	12	1
475	2023-10-09 13:59:29.966791+03	7	Slider object (7)	1	[{"added": {}}]	12	1
476	2023-10-09 13:59:42.576261+03	6	Slider object (6)	2	[{"changed": {"fields": ["\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0441\\u0442\\u044c"]}}]	12	1
477	2023-10-09 13:59:45.968989+03	6	Slider object (6)	2	[{"changed": {"fields": ["\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0441\\u0442\\u044c"]}}]	12	1
478	2023-10-09 14:09:45.829301+03	6	Slider object (6)	3		12	1
479	2023-10-09 14:10:35.272992+03	7	Slider object (7)	2	[{"changed": {"fields": ["\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a", "\\u041f\\u043e\\u0434\\u0437\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a"]}}]	12	1
480	2023-10-09 14:16:07.843031+03	8	Slider object (8)	1	[{"added": {}}]	12	1
481	2023-10-09 14:19:02.387452+03	9	Slider object (9)	1	[{"added": {}}]	12	1
482	2023-10-09 14:19:51.891783+03	9	Slider object (9)	3		12	1
483	2023-10-09 14:22:06.152649+03	10	Slider object (10)	1	[{"added": {}}]	12	1
484	2023-10-09 14:23:54.7315+03	11	Slider object (11)	1	[{"added": {}}]	12	1
485	2023-10-09 14:24:01.137585+03	11	Slider object (11)	2	[{"changed": {"fields": ["\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0441\\u0442\\u044c"]}}]	12	1
486	2023-10-09 14:24:33.147167+03	11	Slider object (11)	3		12	1
487	2023-10-09 14:28:02.041342+03	12	Slider object (12)	1	[{"added": {}}]	12	1
488	2023-10-09 14:28:52.391302+03	10	Slider object (10)	3		12	1
489	2023-10-09 14:30:34.610122+03	13	Slider object (13)	1	[{"added": {}}]	12	1
490	2023-10-09 14:30:52.606568+03	13	Slider object (13)	2	[{"changed": {"fields": ["\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0441\\u0442\\u044c"]}}]	12	1
491	2023-10-09 14:32:36.468499+03	14	Slider object (14)	1	[{"added": {}}]	12	1
492	2023-10-09 14:36:06.761522+03	15	Slider object (15)	1	[{"added": {}}]	12	1
493	2023-10-09 14:37:11.772863+03	15	Slider object (15)	3		12	1
494	2023-10-09 14:37:19.875018+03	13	Slider object (13)	3		12	1
495	2023-10-09 14:41:55.148105+03	16	Slider object (16)	1	[{"added": {}}]	12	1
496	2023-10-09 14:42:52.580747+03	16	Slider object (16)	3		12	1
497	2023-10-09 14:44:57.560273+03	17	Slider object (17)	1	[{"added": {}}]	12	1
498	2023-10-09 14:47:06.182961+03	4	Ысык-Көлдө жергиликтүү тургундун үйүнөн 5 кг ашык марихуана табылды	3		44	1
499	2023-10-09 14:50:42.635071+03	1	Настройки создания тура	2	[{"changed": {"name": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "object": "jeep tours", "fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}, {"added": {"name": "\\u0420\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u0435", "object": "tent"}}, {"changed": {"name": "\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435", "object": "only breakfast", "fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}, {"changed": {"name": "\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435", "object": "breakfast/lunch/dinner", "fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}, {"changed": {"name": "\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435", "object": "no meals", "fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	40	1
500	2023-10-09 14:51:42.18309+03	2	Isyk-Kol	2	[]	43	1
501	2023-10-09 14:52:01.935056+03	2	Issyk-Kul	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	43	1
502	2023-10-09 14:52:16.060703+03	9	Naryn	1	[{"added": {}}]	43	1
503	2023-10-09 14:52:33.363295+03	10	Chuy region	1	[{"added": {}}]	43	1
504	2023-10-09 14:52:49.899756+03	11	Jalal-Abad	1	[{"added": {}}]	43	1
505	2023-10-09 14:53:03.44499+03	12	Osh	1	[{"added": {}}]	43	1
506	2023-10-09 14:53:25.269127+03	13	Batken	1	[{"added": {}}]	43	1
507	2023-10-09 14:54:00.806122+03	14	Kyrgyzstan	1	[{"added": {}}]	43	1
508	2023-10-09 14:54:18.208047+03	15	Talas	1	[{"added": {}}]	43	1
509	2023-10-09 14:54:35.579566+03	14	Kyrgyzstan	3		43	1
510	2023-10-09 14:54:46.673204+03	16	Kyrgyzstan	1	[{"added": {}}]	43	1
511	2023-10-09 15:00:19.831338+03	19	Horse riding tours	1	[{"added": {}}]	6	1
512	2023-10-09 15:07:11.413515+03	19	Horse riding tours	3		6	1
513	2023-10-09 15:22:11.81223+03	10	Issyk-Kul region is the tourist center of Kyrgyzstan	1	[{"added": {}}]	44	1
514	2023-10-09 15:24:42.391901+03	10	Issyk-Kul region is the tourist center of Kyrgyzstan	2	[{"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": ""}}]	44	1
515	2023-10-09 15:34:55.938575+03	11	Issyk-Kul lake	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": ""}}]	44	1
516	2023-10-09 15:44:18.667026+03	12	Karakol city.	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": ""}}]	44	1
517	2023-10-09 15:49:16.581602+03	13	Chinese-style Duncan wooden mosque	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": ""}}]	44	1
518	2023-10-09 15:56:17.470797+03	14	The Church of the Holy Trinity	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": ""}}]	44	1
519	2023-10-09 15:57:27.299373+03	13	Chinese-style Duncan wooden mosque	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	44	1
520	2023-10-09 16:50:54.54119+03	15	Kararol Gorge (resort Karakol)	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": ""}}]	44	1
521	2023-10-09 16:54:52.072653+03	16	Prjevalskiy museum	1	[{"added": {}}]	44	1
522	2023-10-09 16:57:58.821413+03	14	Slider object (14)	3		12	1
523	2023-10-09 16:58:10.634873+03	18	Slider object (18)	1	[{"added": {}}]	12	1
524	2023-10-09 17:02:30.466546+03	17	The Petroglyph Museum	1	[{"added": {}}]	44	1
525	2023-10-09 17:06:03.234011+03	18	Cholpon-Ata city	1	[{"added": {}}]	44	1
526	2023-10-09 17:08:26.899156+03	19	Cultural center "Ruh Ordo"	1	[{"added": {}}]	44	1
527	2023-10-09 17:10:29.073891+03	19	Cultural center "Ruh Ordo"	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	44	1
528	2023-10-09 17:13:27.637217+03	20	The Equestrian Hippodrome in Cholpon-Ata	1	[{"added": {}}]	44	1
529	2023-10-09 17:18:20.74824+03	21	Altyn-Arashan Gorge	1	[{"added": {}}]	44	1
530	2023-10-09 17:23:05.693255+03	22	Lake Ala-Kol	1	[{"added": {}}]	44	1
531	2023-10-09 17:28:25.580921+03	23	Jeti Oguz Gorge	1	[{"added": {}}]	44	1
532	2023-10-09 17:33:02.500386+03	24	Grigorievsky  Gorge	1	[{"added": {}}]	44	1
533	2023-10-09 17:49:46.565192+03	25	Skazka (Fairytale)  Canyon	1	[{"added": {}}]	44	1
534	2023-10-09 17:52:09.315774+03	26	Jergalan  jayloo	1	[{"added": {}}]	44	1
535	2023-10-09 17:55:05.4263+03	27	Salt Lake	1	[{"added": {}}]	44	1
536	2023-10-09 17:57:57.477743+03	28	Lake Teshik Kul	1	[{"added": {}}]	44	1
537	2023-10-09 18:00:18.948145+03	29	Arabel Valley	1	[{"added": {}}]	44	1
538	2023-10-09 18:03:44.937737+03	30	Semenov Gorge	1	[{"added": {}}]	44	1
539	2023-10-09 18:06:52.184747+03	31	Barskoon Gorge	1	[{"added": {}}]	44	1
540	2023-10-09 18:09:28.862288+03	32	Tosor Gorge	1	[{"added": {}}]	44	1
541	2023-10-09 18:15:10.204647+03	25	salam salam	3		29	1
542	2023-10-09 18:15:10.212429+03	24	Test Test	3		29	1
543	2023-10-09 18:15:10.216374+03	23	Тилек Бегалиев	3		29	1
544	2023-10-09 18:15:10.225354+03	22	Тилек Бегалиев	3		29	1
545	2023-10-09 18:15:10.228877+03	21	shdfvksdfbvhdbfksnk dvdfvdkfk	3		29	1
546	2023-10-09 18:15:10.232019+03	20	shdfvksdfbvhdbfksnk dvdfvdkfk	3		29	1
547	2023-10-09 18:15:10.237399+03	19	skjvsvljnsdlv djfvndfvjdf	3		29	1
548	2023-10-09 18:15:10.242833+03	18	skjvsvljnsdlv djfvndfvjdf	3		29	1
549	2023-10-09 18:15:10.247186+03	17	skjvsvljnsdlv djfvndfvjdf	3		29	1
550	2023-10-09 18:15:10.250391+03	16	skjvsvljnsdlv djfvndfvjdf	3		29	1
551	2023-10-09 18:15:10.263632+03	15	vsvsvnsdjvnjl jvndjvnsjvln	3		29	1
552	2023-10-09 18:15:10.266865+03	14	vsvsvnsdjvnjl jvndjvnsjvln	3		29	1
553	2023-10-09 18:15:10.2762+03	13	vsvsvnsdjvnjl jvndjvnsjvln	3		29	1
554	2023-10-09 18:15:10.280067+03	12	djfvfl sjlfvlsvln	3		29	1
555	2023-10-09 18:15:10.284396+03	11	adfvadfbvbjk dfkvdbkfbv	3		29	1
556	2023-10-09 18:15:10.287578+03	10	string string	3		29	1
557	2023-10-09 18:15:10.292794+03	9	string string	3		29	1
558	2023-10-09 18:15:10.296425+03	8	string string	3		29	1
559	2023-10-09 18:15:10.300198+03	7	string string	3		29	1
560	2023-10-09 18:15:10.305755+03	6	string string	3		29	1
561	2023-10-09 18:15:10.309541+03	5	string string	3		29	1
562	2023-10-09 18:15:10.312754+03	4	string string	3		29	1
563	2023-10-09 18:15:10.316054+03	3	string string	3		29	1
564	2023-10-09 18:15:10.319185+03	2	sldfvsdkfvsdfj ajfvsdjfdfjn	3		29	1
565	2023-10-09 18:15:10.322487+03	1	Срнтпня Ьшкфтдф ггдг	3		29	1
566	2023-10-09 18:18:41.764343+03	43	hello salan	3		42	1
567	2023-10-09 18:18:41.771386+03	42	salam salam	3		42	1
568	2023-10-09 18:18:56.832329+03	41	fullname	3		42	1
569	2023-10-09 18:18:56.837095+03	40	text	3		42	1
570	2023-10-09 18:18:56.840407+03	39	User Test	3		42	1
571	2023-10-09 18:18:56.843588+03	38	mndc	3		42	1
572	2023-10-09 18:18:56.848082+03	37	hello	3		42	1
573	2023-10-09 18:18:56.853127+03	36	string	3		42	1
574	2023-10-09 18:18:56.858757+03	35	string	3		42	1
575	2023-10-09 18:18:56.878448+03	34	Tilek Begaliev	3		42	1
576	2023-10-09 18:18:56.882125+03	33	dcjnc	3		42	1
577	2023-10-09 18:18:56.886973+03	32	jmifdnvf	3		42	1
578	2023-10-09 18:18:56.893836+03	31	ричисросврисв	3		42	1
579	2023-10-09 18:18:56.897053+03	30	string	3		42	1
580	2023-10-09 18:18:56.900177+03	29	string	3		42	1
581	2023-10-09 18:18:56.906428+03	28	string	3		42	1
582	2023-10-09 18:18:56.912483+03	27	string	3		42	1
583	2023-10-09 18:18:56.919831+03	26	string	3		42	1
584	2023-10-09 18:18:56.92738+03	25	string	3		42	1
585	2023-10-09 18:18:56.930708+03	24	string	3		42	1
586	2023-10-09 18:18:56.947117+03	23	salam-hello	3		42	1
587	2023-10-09 18:18:56.952045+03	22	salam-hello	3		42	1
588	2023-10-09 18:18:56.955379+03	21	salam-hello	3		42	1
589	2023-10-09 18:18:56.958892+03	20	salam-hello	3		42	1
590	2023-10-09 18:18:56.964154+03	19	string	3		42	1
591	2023-10-09 18:18:56.968757+03	18	string	3		42	1
592	2023-10-09 18:18:56.975176+03	17	string	3		42	1
593	2023-10-09 18:18:56.978747+03	16	string	3		42	1
594	2023-10-09 18:18:56.986067+03	15	string	3		42	1
595	2023-10-09 18:18:56.990051+03	14	nxcbdcbhdbh	3		42	1
596	2023-10-09 18:18:56.996762+03	13	string	3		42	1
597	2023-10-09 18:18:57.00194+03	12	string	3		42	1
598	2023-10-09 18:18:57.006315+03	11	salam_hello	3		42	1
599	2023-10-09 18:18:57.010084+03	10	cdnjnfjnvrfisknndjwejkcnc	3		42	1
600	2023-10-09 18:18:57.015889+03	9		3		42	1
601	2023-10-09 18:18:57.020659+03	8		3		42	1
602	2023-10-09 18:18:57.024606+03	7		3		42	1
603	2023-10-09 18:18:57.028614+03	4		3		42	1
604	2023-10-09 18:18:57.031869+03	3		3		42	1
605	2023-10-09 18:18:57.037764+03	2		3		42	1
606	2023-10-09 18:18:57.041735+03	1		3		42	1
607	2023-10-09 18:19:26.759645+03	1	Настройки создания тура	2	[]	40	1
608	2023-10-09 18:20:47.59201+03	20	Horse riding tours	1	[{"added": {}}]	6	1
609	2023-10-09 23:21:59.253816+03	20	Horse riding tours	3		6	1
610	2023-10-10 12:36:36.855373+03	33	Naryn region	1	[{"added": {}}]	44	1
611	2023-10-10 12:55:23.288044+03	34	Son-Kol Lake	1	[{"added": {}}]	44	1
612	2023-10-10 13:02:39.098047+03	35	Kel-suu	1	[{"added": {}}]	44	1
613	2023-10-10 13:12:06.407832+03	36	Tash Rabat	1	[{"added": {}}]	44	1
614	2023-10-10 13:13:23.86004+03	34	Son-Kol Lake	2	[{"changed": {"fields": ["\\u041f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	44	1
615	2023-10-10 13:16:32.581932+03	37	Kekemeren gorge	1	[{"added": {}}]	44	1
616	2023-10-10 13:19:06.739126+03	38	Lake Chatir Kul.	1	[{"added": {}}]	44	1
617	2023-10-10 13:22:51.698825+03	39	Kara-Keche gorge	1	[{"added": {}}]	44	1
618	2023-10-10 13:28:00.596345+03	40	Jayloo in Naryn	1	[{"added": {}}]	44	1
619	2023-10-10 13:34:32.811966+03	41	Chuy Region in Kyrgyzstan	1	[{"added": {}}]	44	1
620	2023-10-10 13:35:17.364925+03	41	Chuy Region in Kyrgyzstan	2	[{"changed": {"fields": ["\\u041f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	44	1
621	2023-10-10 14:26:34.853267+03	42	Suusamir Valley	1	[{"added": {}}]	44	1
622	2023-10-10 14:30:55.92273+03	43	Burana Tower.	1	[{"added": {}}]	44	1
623	2023-10-10 14:32:09.595647+03	42	Suusamir Valley	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	44	1
624	2023-10-10 14:38:36.167583+03	44	The Ala-Archa National Park	1	[{"added": {}}]	44	1
625	2023-10-10 14:44:29.466278+03	45	The Kegety Gorge	1	[{"added": {}}]	44	1
626	2023-10-10 16:45:53.144308+03	46	Chunkurchak gorge	1	[{"added": {}}]	44	1
627	2023-10-10 16:51:10.825097+03	47	Chong - kemin Valley	1	[{"added": {}}]	44	1
628	2023-10-10 16:55:28.261919+03	48	Issyk-Ata gorge	1	[{"added": {}}]	44	1
629	2023-10-10 16:56:31.849164+03	48	Issyk-Ata gorge	2	[{"changed": {"fields": ["\\u041f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	44	1
630	2023-10-10 17:02:43.947602+03	49	Konorchek Canyon	1	[{"added": {}}]	44	1
631	2023-10-10 17:10:12.045639+03	50	Shamsy Gorge	1	[{"added": {}}]	44	1
632	2023-10-10 17:16:29.834833+03	51	Belogorsk Gorge	1	[{"added": {}}]	44	1
633	2023-10-10 17:18:04.015028+03	51	Belogorsk Gorge	2	[{"changed": {"fields": ["\\u041f\\u0440\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u044b"]}}]	44	1
634	2023-10-10 17:30:21.669007+03	52	Jalal-Abad Region	1	[{"added": {}}]	44	1
635	2023-10-10 17:33:50.342219+03	53	Chychkan Gorge	1	[{"added": {}}]	44	1
636	2023-10-10 17:36:42.295235+03	54	Kara-Suu Lake.	1	[{"added": {}}]	44	1
637	2023-10-10 17:43:48.488197+03	55	Arslanbob Forest	1	[{"added": {}}]	44	1
638	2023-10-10 17:47:51.088714+03	56	Petroglyphs of Saimaluu-Tash	1	[{"added": {}}]	44	1
639	2023-10-10 17:52:29.508365+03	57	Sary- Chelek Lake	1	[{"added": {}}]	44	1
640	2023-10-10 17:56:50.576712+03	58	Naryn Canyon	1	[{"added": {}}]	44	1
641	2023-10-10 18:02:18.220139+03	59	Toktogul Reservoir	1	[{"added": {}}]	44	1
642	2023-10-10 18:07:28.634384+03	60	Shah Fazil Mausoleum	1	[{"added": {}}]	44	1
643	2023-10-11 08:14:08.904098+03	61	Osh Region	1	[{"added": {}}]	44	1
644	2023-10-11 08:19:35.643232+03	62	Osh city	1	[{"added": {}}]	44	1
645	2023-10-11 08:22:48.273516+03	63	Sulayman Too	1	[{"added": {}}]	44	1
646	2023-10-11 08:28:16.431071+03	64	Chychkan Gorge	1	[{"added": {}}]	44	1
647	2023-10-11 08:31:37.269047+03	65	Taldyk Pass	1	[{"added": {}}]	44	1
648	2023-10-11 08:35:37.793009+03	66	Uzgen	1	[{"added": {}}]	44	1
649	2023-10-11 08:38:01.438153+03	67	Tulpar kul Lake	1	[{"added": {}}]	44	1
650	2023-10-11 08:42:17.835457+03	68	Alay Valley	1	[{"added": {}}]	44	1
651	2023-10-11 08:44:52.272178+03	69	Kulung Lake	1	[{"added": {}}]	44	1
652	2023-10-11 08:47:42.66229+03	70	Lenin Peak	1	[{"added": {}}]	44	1
653	2023-10-11 08:51:19.967044+03	71	Kyrgyz- Ata Nature Reserve	1	[{"added": {}}]	44	1
654	2023-10-11 08:53:42.840108+03	72	Abshir Ata gorge	1	[{"added": {}}]	44	1
655	2023-10-11 08:58:59.043995+03	73	Chil-Ushtun Cave	1	[{"added": {}}]	44	1
656	2023-10-11 09:01:14.625578+03	74	Jayloo in Osh	1	[{"added": {}}]	44	1
657	2023-10-11 09:03:08.555045+03	7	Slider object (7)	3		12	1
658	2023-10-11 09:06:17.929243+03	19	Slider object (19)	1	[{"added": {}}]	12	1
659	2023-10-11 09:15:00.140622+03	75	Batken Region	1	[{"added": {}}]	44	1
660	2023-10-11 09:18:13.181765+03	76	Talas region	1	[{"added": {}}]	44	1
661	2023-10-11 09:20:49.812773+03	77	Kirov Reservoir	1	[{"added": {}}]	44	1
662	2023-10-11 09:30:37.61758+03	78	Manas-Ordo Historical Complex	1	[{"added": {}}]	44	1
663	2023-10-11 09:33:13.4625+03	79	Besh Tash Lake (Besh Tash nature reserve)	1	[{"added": {}}]	44	1
664	2023-10-11 09:36:16.071129+03	80	Jayloo in Talas	1	[{"added": {}}]	44	1
665	2023-10-11 09:45:55.506228+03	81	Kyrgyzstan-country of nomads life	1	[{"added": {}}]	44	1
666	2023-10-11 10:01:59.337574+03	81	Kyrgyzstan-country of nomads life	2	[{"changed": {"fields": ["\\u041f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	44	1
667	2023-10-11 10:04:04.806943+03	81	Kyrgyzstan-country of nomads life	2	[{"changed": {"fields": ["\\u041f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	44	1
668	2023-10-11 12:11:57.358428+03	10	text	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1200"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
669	2023-10-11 12:12:12.49787+03	10	text	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
670	2023-10-11 12:15:57.974122+03	1	Yssyk-Kol	1	[{"added": {}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": "Test"}}]	47	1
671	2023-10-11 13:48:05.144425+03	10	text	3		9	1
672	2023-10-11 13:54:05.173238+03	21	Horse riding tours	1	[{"added": {}}]	6	1
673	2023-10-11 13:55:50.635794+03	22	Trekking tours	1	[{"added": {}}]	6	1
674	2023-10-11 13:56:35.75514+03	7		3		33	1
675	2023-10-11 14:16:34.854061+03	11	Horse riding Golden and Eagle hunting 4 days tour	1	[{"added": {}}]	9	1
676	2023-10-11 14:21:59.089858+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
677	2023-10-11 14:23:53.21189+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"changed": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image", "fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	9	1
728	2023-10-12 10:50:58.082062+03	16	Horseback riding in the Chon-Kemin Valley. 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
678	2023-10-11 14:24:15.080122+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"changed": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image", "fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	9	1
679	2023-10-11 14:25:34.669398+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
680	2023-10-11 14:26:44.771204+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"changed": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image", "fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	9	1
681	2023-10-11 14:28:12.510983+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"changed": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image", "fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}, {"deleted": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
682	2023-10-11 14:34:35.094182+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1345"}}]	9	1
683	2023-10-11 14:36:46.908695+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1345"}}]	9	1
684	2023-10-11 14:40:02.689249+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1345"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1300"}}]	9	1
685	2023-10-11 14:41:13.488461+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
686	2023-10-11 14:43:43.678376+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
687	2023-10-11 14:55:21.077621+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
688	2023-10-11 14:57:23.088543+03	1	Настройки создания тура	2	[]	40	1
689	2023-10-11 14:59:21.43146+03	2	burana tower	1	[{"added": {}}]	47	1
690	2023-10-11 15:03:38.166412+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
691	2023-10-11 15:04:53.393103+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
692	2023-10-11 16:29:52.314776+03	2	Bishkek	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	47	1
693	2023-10-12 08:16:06.197781+03	12	Golden Eagle hunting and horse riding 3 days tour	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "760"}}]	9	1
694	2023-10-12 08:18:32.528694+03	12	Golden Eagle hunting and horse riding 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
695	2023-10-12 08:21:39.096408+03	12	Golden Eagle hunting and horse riding 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
696	2023-10-12 08:26:32.900128+03	23	Guaranteed  tours	1	[{"added": {}}]	6	1
697	2023-10-12 08:27:40.671736+03	21	Horse riding tours	2	[]	6	1
698	2023-10-12 08:29:17.19918+03	24	Many days tour	1	[{"added": {}}]	6	1
699	2023-10-12 08:30:01.466575+03	25	Central Asia tours	1	[{"added": {}}]	6	1
700	2023-10-12 08:30:19.54097+03	13	Test	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1500"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
701	2023-10-12 09:06:42.747987+03	13	Test	3		9	1
702	2023-10-12 09:15:39.961192+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1150"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1150"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1150"}}]	9	1
703	2023-10-12 09:16:15.751342+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
704	2023-10-12 09:21:53.287595+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
705	2023-10-12 09:22:30.134548+03	26	Guaranteed  tours	1	[{"added": {}}]	6	1
706	2023-10-12 09:23:28.135243+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
1047	2023-10-18 12:43:22.8583+03	21	Cholpon-Ata city	1	[{"added": {}}]	44	1
707	2023-10-12 09:25:07.982372+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"changed": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image", "fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	9	1
708	2023-10-12 09:27:04.288272+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"changed": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image", "fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	9	1
709	2023-10-12 09:27:21.913815+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
710	2023-10-12 09:27:40.590535+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
711	2023-10-12 09:27:57.856602+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
712	2023-10-12 09:29:04.225079+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
713	2023-10-12 09:30:00.295055+03	26	Guaranteed  tours	3		6	1
714	2023-10-12 09:33:02.920305+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
715	2023-10-12 09:34:49.262336+03	12	Golden Eagle hunting and horse riding 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
716	2023-10-12 09:42:57.030475+03	15	Horseback riding in the Chon-Kemin gorge – Shamsi Valley. 6 days tour	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1755"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1755"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1755"}}]	9	1
717	2023-10-12 09:49:45.798824+03	15	Horseback riding in the Chon-Kemin gorge – Shamsi Valley. 6 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
718	2023-10-12 09:50:51.683657+03	15	Horseback riding in the Chon-Kemin gorge – Shamsi Valley. 6 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
719	2023-10-12 09:51:25.261029+03	15	Horseback riding in the Chon-Kemin gorge – Shamsi Valley. 6 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
720	2023-10-12 09:51:51.451896+03	15	Horseback riding in the Chon-Kemin gorge – Shamsi Valley. 6 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
721	2023-10-12 09:52:20.710686+03	15	Horseback riding in the Chon-Kemin gorge – Shamsi Valley. 6 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
722	2023-10-12 09:54:37.567703+03	15	Horseback riding in the Chon-Kemin gorge – Shamsi Valley. 6 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
723	2023-10-12 10:43:06.716347+03	16	Horseback riding in the Chon-Kemin Valley. 3 days tour	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1023"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1023"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1023"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1023"}}]	9	1
724	2023-10-12 10:45:53.185142+03	16	Horseback riding in the Chon-Kemin Valley. 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
725	2023-10-12 10:47:40.586883+03	16	Horseback riding in the Chon-Kemin Valley. 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
726	2023-10-12 10:48:44.739453+03	16	Horseback riding in the Chon-Kemin Valley. 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"changed": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image", "fields": ["\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435"]}}]	9	1
727	2023-10-12 10:49:59.421085+03	16	Horseback riding in the Chon-Kemin Valley. 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
1048	2023-10-18 12:44:14.797547+03	22	The Petroglyph Museum in Cholpon Ata:	1	[{"added": {}}]	44	1
1055	2023-10-18 12:49:28.915908+03	29	Jeti Oguz Gorge	1	[{"added": {}}]	44	1
729	2023-10-12 10:57:20.927517+03	17	Horseback riding in the Tian-shan Mountains 3 days tour	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1063"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1063"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1063"}}]	9	1
730	2023-10-12 10:58:14.430848+03	17	Horseback riding in the Tian-shan Mountains 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
731	2023-10-12 10:58:59.474845+03	17	Horseback riding in the Tian-shan Mountains 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
732	2023-10-12 10:59:40.904304+03	17	Horseback riding in the Tian-shan Mountains 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
733	2023-10-12 11:00:51.86365+03	17	Horseback riding in the Tian-shan Mountains 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
734	2023-10-12 11:09:23.736019+03	18	Nomadic 9 days Horseriding tour	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "2758"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "2758"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "2758"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "2700"}}]	9	1
735	2023-10-12 11:17:42.188293+03	18	Nomadic 9 days Horseriding tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
736	2023-10-12 11:21:43.269993+03	18	Nomadic 9 days Horseriding tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
737	2023-10-12 11:22:25.946129+03	18	Nomadic 9 days Horseriding tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
738	2023-10-12 11:23:23.279875+03	18	Nomadic 9 days Horseriding tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
739	2023-10-12 11:24:06.776509+03	18	Nomadic 9 days Horseriding tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
740	2023-10-12 11:26:55.730445+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
741	2023-10-12 11:27:43.842964+03	16	Horseback riding in the Chon-Kemin Valley. 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
742	2023-10-12 11:28:37.984636+03	15	Horseback riding in the Chon-Kemin gorge – Shamsi Valley. 6 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
743	2023-10-12 14:45:32.529581+03	81	Kyrgyzstan-country of nomads life	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
744	2023-10-12 14:52:20.24031+03	19	Kazakhstan-Kyrgyzstan Group Tour	1	[{"added": {}}]	9	1
745	2023-10-12 14:55:34.721743+03	19	Kazakhstan-Kyrgyzstan Group Tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "2200"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "2200"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "2200"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "2200"}}]	9	1
746	2023-10-12 15:04:23.977276+03	19	Kazakhstan-Kyrgyzstan Group Tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
747	2023-10-12 15:08:02.784122+03	19	Kazakhstan-Kyrgyzstan Group Tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
748	2023-10-12 15:08:57.506962+03	19	Kazakhstan-Kyrgyzstan Group Tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
749	2023-10-12 15:09:45.524231+03	19	Kazakhstan-Kyrgyzstan Group Tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
750	2023-10-12 15:10:27.668297+03	19	Kazakhstan-Kyrgyzstan Group Tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
751	2023-10-12 15:22:51.87635+03	20	4 days tour Around Issyk Kul’s fairytale	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1240"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
752	2023-10-12 15:24:05.613385+03	20	4 days tour Around Issyk Kul’s fairytale	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
753	2023-10-12 15:25:00.984102+03	20	4 days tour Around Issyk Kul’s fairytale	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
754	2023-10-12 15:25:59.956125+03	20	4 days tour Around Issyk Kul’s fairytale	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
755	2023-10-12 15:26:40.199349+03	20	4 days tour Around Issyk Kul’s fairytale	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
756	2023-10-12 15:27:59.458633+03	10	Issyk-Kul region is the tourist center of Kyrgyzstan	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
757	2023-10-12 15:30:18.423202+03	18	Nomadic 9 days Horseriding tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"changed": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route", "fields": ["\\u041f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u0430"]}}]	9	1
758	2023-10-12 15:31:59.558278+03	11	Issyk-Kul lake	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
759	2023-10-12 15:33:31.637652+03	12	Karakol city.	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
760	2023-10-12 15:35:21.762096+03	43	Burana Tower.	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
761	2023-10-12 15:35:45.762117+03	40	Jayloo in Naryn	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
762	2023-10-12 15:36:07.633408+03	34	Son-Kol Lake	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
763	2023-10-12 15:39:11.249579+03	23	Jeti Oguz Gorge	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
764	2023-10-12 15:39:49.326273+03	18	Cholpon-Ata city	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
765	2023-10-12 15:46:19.819814+03	39	Kara-Keche gorge	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
766	2023-10-12 15:46:55.646939+03	21	Altyn-Arashan Gorge	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
767	2023-10-12 15:47:35.692035+03	32	Tosor Gorge	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
768	2023-10-12 15:49:34.686013+03	8	Slider object (8)	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0434\\u0437\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a", "\\u0422\\u0443\\u0440 \\u043d\\u0430 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u0441\\u0441\\u044b\\u043b\\u0430\\u0435\\u0442\\u0441\\u044f \\u0441\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440"]}}]	12	1
769	2023-10-12 15:50:26.006921+03	8	Slider object (8)	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0434\\u0437\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a"]}}]	12	1
770	2023-10-12 15:50:56.898143+03	8	Slider object (8)	2	[]	12	1
771	2023-10-12 15:51:54.711975+03	8	Slider object (8)	2	[]	12	1
772	2023-10-12 15:53:08.24505+03	17	Slider object (17)	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0434\\u0437\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a"]}}]	12	1
773	2023-10-12 15:53:08.4887+03	17	Slider object (17)	2	[]	12	1
774	2023-10-12 15:53:37.393868+03	17	Slider object (17)	2	[{"changed": {"fields": ["\\u0422\\u0443\\u0440 \\u043d\\u0430 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u0441\\u0441\\u044b\\u043b\\u0430\\u0435\\u0442\\u0441\\u044f \\u0441\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440"]}}]	12	1
775	2023-10-12 15:55:06.98959+03	17	Slider object (17)	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0434\\u0437\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a"]}}]	12	1
776	2023-10-12 15:55:23.653011+03	8	Slider object (8)	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0434\\u0437\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a"]}}]	12	1
777	2023-10-12 15:56:31.423259+03	18	Slider object (18)	2	[{"changed": {"fields": ["\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a", "\\u0422\\u0443\\u0440 \\u043d\\u0430 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u0441\\u0441\\u044b\\u043b\\u0430\\u0435\\u0442\\u0441\\u044f \\u0441\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440"]}}]	12	1
778	2023-10-12 15:57:25.018927+03	19	Slider object (19)	2	[{"changed": {"fields": ["\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a", "\\u0422\\u0443\\u0440 \\u043d\\u0430 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u0441\\u0441\\u044b\\u043b\\u0430\\u0435\\u0442\\u0441\\u044f \\u0441\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440"]}}]	12	1
779	2023-10-12 15:57:51.012652+03	12	Slider object (12)	2	[{"changed": {"fields": ["\\u0422\\u0443\\u0440 \\u043d\\u0430 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u0441\\u0441\\u044b\\u043b\\u0430\\u0435\\u0442\\u0441\\u044f \\u0441\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440"]}}]	12	1
780	2023-10-12 16:06:46.414726+03	21	Trekking 1: Ala-Archa National Park	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1"}}]	9	1
781	2023-10-12 16:13:47.119082+03	21	Trekking 1: Ala-Archa National Park	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
1049	2023-10-18 12:45:00.503656+03	23	Cultural center "Ruh Ordo	1	[{"added": {}}]	44	1
782	2023-10-12 16:18:12.584151+03	21	Trekking 1: Ala-Archa National Park	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
783	2023-10-12 16:18:32.619119+03	21	Trekking 1: Ala-Archa National Park	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
784	2023-10-12 16:18:49.020713+03	21	Trekking 1: Ala-Archa National Park	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
785	2023-10-12 16:19:00.004643+03	21	Trekking 1: Ala-Archa National Park	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
786	2023-10-12 16:20:12.713+03	44	The Ala-Archa National Park	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
787	2023-10-12 16:20:39.999218+03	41	Chuy Region in Kyrgyzstan	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
788	2023-10-12 16:29:48.851233+03	22	Trekking 3: Bishkek-Ala-Kul Lake-Bishkek	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1"}}]	9	1
789	2023-10-12 16:30:34.839468+03	22	Trekking 3: Bishkek-Ala-Kul Lake-Bishkek	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
790	2023-10-12 16:31:23.043877+03	22	Trekking 3: Bishkek-Ala-Kul Lake-Bishkek	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
791	2023-10-12 16:32:20.012014+03	22	Trekking 3: Bishkek-Ala-Kul Lake-Bishkek	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
792	2023-10-12 16:33:06.477929+03	22	Trekking 3: Bishkek-Ala-Kul Lake-Bishkek	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
793	2023-10-12 16:34:04.978913+03	22	Trekking 3: Bishkek-Ala-Kul Lake-Bishkek	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
794	2023-10-12 16:36:44.893249+03	21	Altyn-Arashan Gorge	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
795	2023-10-12 16:39:29.96135+03	15	Kararol Gorge (resort Karakol)	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
796	2023-10-12 16:43:09.906487+03	8	Slider object (8)	2	[]	12	1
797	2023-10-12 16:48:14.16902+03	23	Trekking 3: Jety Oguz 7 Days | Bishkek, Karakol, Svetlay polyana, Jety-Oguz, Karakol National Park	1	[{"added": {}}]	9	1
798	2023-10-12 16:59:24.347881+03	23	Trekking 3: Jety Oguz 7 Days | Bishkek, Karakol, Svetlay polyana, Jety-Oguz, Karakol National Park	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
799	2023-10-12 17:00:54.958232+03	23	Trekking 3: Jety Oguz 7 Days | Bishkek, Karakol, Svetlay polyana, Jety-Oguz, Karakol National Park	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
800	2023-10-12 17:01:45.507046+03	23	Trekking 3: Jety Oguz 7 Days | Bishkek, Karakol, Svetlay polyana, Jety-Oguz, Karakol National Park	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
801	2023-10-12 17:03:15.618059+03	23	Trekking 3: Jety Oguz 7 Days | Bishkek, Karakol, Svetlay polyana, Jety-Oguz, Karakol National Park	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
802	2023-10-12 17:04:31.631118+03	22	Trekking 3: Bishkek-Ala-Kul Lake-Bishkek	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
803	2023-10-12 17:04:42.152188+03	21	Trekking 1: Ala-Archa National Park	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
804	2023-10-12 17:04:51.275021+03	20	4 days tour Around Issyk Kul’s fairytale	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
872	2023-10-15 15:09:15.209188+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
805	2023-10-12 17:05:02.923095+03	16	Horseback riding in the Chon-Kemin Valley. 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
806	2023-10-12 17:05:11.518546+03	12	Golden Eagle hunting and horse riding 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
807	2023-10-12 17:06:05.846323+03	17	Horseback riding in the Tian-shan Mountains 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
808	2023-10-12 17:07:14.067693+03	23	Trekking 3: Jety Oguz 7 Days | Bishkek, Karakol, Svetlay polyana, Jety-Oguz, Karakol National Park	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
809	2023-10-12 17:07:14.074888+03	19	Kazakhstan-Kyrgyzstan Group Tour	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
810	2023-10-12 17:07:14.080909+03	18	Nomadic 9 days Horseriding tour	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
811	2023-10-12 17:07:14.096863+03	15	Horseback riding in the Chon-Kemin gorge – Shamsi Valley. 6 days tour	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
812	2023-10-12 17:07:14.114036+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
813	2023-10-13 13:28:53.256923+03	22	Trekking 3: Bishkek-Ala-Kul Lake-Bishkek	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"changed": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "None", "fields": ["\\u0426\\u0435\\u043d\\u0430"]}}, {"changed": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "None", "fields": ["\\u0426\\u0435\\u043d\\u0430"]}}, {"changed": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "None", "fields": ["\\u0426\\u0435\\u043d\\u0430"]}}, {"changed": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "None", "fields": ["\\u0426\\u0435\\u043d\\u0430"]}}]	9	1
814	2023-10-13 13:29:20.733991+03	21	Trekking 1: Ala-Archa National Park	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"changed": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "None", "fields": ["\\u0426\\u0435\\u043d\\u0430"]}}, {"changed": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "None", "fields": ["\\u0426\\u0435\\u043d\\u0430"]}}, {"changed": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "None", "fields": ["\\u0426\\u0435\\u043d\\u0430"]}}, {"changed": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "None", "fields": ["\\u0426\\u0435\\u043d\\u0430"]}}]	9	1
815	2023-10-13 13:34:27.734235+03	16	Horseback riding in the Chon-Kemin Valley. 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
816	2023-10-13 13:34:27.741784+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
817	2023-10-13 13:34:27.74924+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
818	2023-10-13 14:07:00.191263+03	24	5 day  tour to the ski base in Karakol and the Issyk Kul Lake.	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1000"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1000"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1000"}}]	9	1
819	2023-10-13 14:09:16.104657+03	24	5 day  tour to the ski base in Karakol and the Issyk Kul Lake.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
820	2023-10-13 14:09:59.530918+03	24	5 day  tour to the ski base in Karakol and the Issyk Kul Lake.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
821	2023-10-13 14:11:04.537252+03	24	5 day  tour to the ski base in Karakol and the Issyk Kul Lake.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
822	2023-10-13 14:11:46.670698+03	24	5 day  tour to the ski base in Karakol and the Issyk Kul Lake.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
823	2023-10-13 14:12:20.126187+03	24	5 day  tour to the ski base in Karakol and the Issyk Kul Lake.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
824	2023-10-13 14:14:57.690661+03	3	Kyrgyzstan	1	[{"added": {}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": "Tyan-Shan"}}]	47	1
825	2023-10-13 14:30:03.11232+03	25	7 days best treasures of Kyrgyzstan tour.	1	[{"added": {}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
826	2023-10-13 14:31:06.807158+03	25	7 days best treasures of Kyrgyzstan tour.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
827	2023-10-13 14:32:16.780073+03	25	7 days best treasures of Kyrgyzstan tour.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
828	2023-10-13 14:33:01.362299+03	25	7 days best treasures of Kyrgyzstan tour.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
829	2023-10-13 14:33:40.135198+03	25	7 days best treasures of Kyrgyzstan tour.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
830	2023-10-13 14:44:07.438188+03	24	5 day  tour to the ski base in Karakol and the Issyk Kul Lake.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
831	2023-10-13 14:44:52.274593+03	24	5 day  tour to the ski base in Karakol and the Issyk Kul Lake.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"changed": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route", "fields": ["\\u0414\\u0435\\u043d\\u044c"]}}]	9	1
832	2023-10-13 14:45:54.644064+03	24	5 day  tour to the ski base in Karakol and the Issyk Kul Lake.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
833	2023-10-13 14:48:59.688484+03	17	Horseback riding in the Tian-shan Mountains 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
834	2023-10-13 14:52:14.961184+03	17	Horseback riding in the Tian-shan Mountains 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
835	2023-10-13 14:52:20.145381+03	1	test	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 [en]"]}}, {"changed": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": "Test", "fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	47	1
836	2023-10-13 14:53:17.297461+03	1	test	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 [ru]"]}}]	47	1
837	2023-10-13 14:53:55.146558+03	24	5 day  tour to the ski base in Karakol and the Issyk Kul Lake.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"deleted": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
838	2023-10-13 14:54:40.911464+03	24	5 day  tour to the ski base in Karakol and the Issyk Kul Lake.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
839	2023-10-13 15:19:39.755427+03	3	Kyrgyzstan	2	[{"changed": {"fields": ["\\u042f\\u0437\\u044b\\u043a"]}}]	47	1
840	2023-10-13 15:20:56.875025+03	3	Kyrgyzstan	2	[]	47	1
841	2023-10-13 17:05:19.159572+03	25	7 days best treasures of Kyrgyzstan tour.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
842	2023-10-13 17:21:13.80105+03	26	Kyrgyzstan Small Group Tour 2024-2025 from may till September	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1280"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1280"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1280"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1280"}}]	9	1
843	2023-10-13 17:36:39.366162+03	26	Kyrgyzstan Small Group Tour 2024-2025 from may till September	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
844	2023-10-13 17:37:50.698412+03	26	Kyrgyzstan Small Group Tour 2024-2025 from may till September	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
845	2023-10-13 17:38:35.704531+03	26	Kyrgyzstan Small Group Tour 2024-2025 from may till September	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
846	2023-10-13 17:39:18.135225+03	26	Kyrgyzstan Small Group Tour 2024-2025 from may till September	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
1050	2023-10-18 12:45:45.416518+03	24	Bishkek	1	[{"added": {}}]	44	1
1056	2023-10-18 12:50:06.852063+03	28	Jeti Oguz Gorge	3		44	1
1060	2023-10-18 12:55:50.541436+03	33	Fairytale  Canyon	1	[{"added": {}}]	44	1
847	2023-10-13 17:39:36.199712+03	26	Kyrgyzstan Small Group Tour 2024-2025 from may till September	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
848	2023-10-13 17:39:51.772219+03	26	Kyrgyzstan Small Group Tour 2024-2025 from may till September	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
849	2023-10-13 17:39:51.780613+03	22	Trekking 3: Bishkek-Ala-Kul Lake-Bishkek	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
850	2023-10-13 17:39:51.78653+03	21	Trekking 1: Ala-Archa National Park	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
851	2023-10-13 17:51:55.118294+03	21	Trekking 1: Ala-Archa National Park	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
852	2023-10-14 12:55:11.559836+03	19	Kazakhstan-Kyrgyzstan Group Tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
853	2023-10-14 12:57:34.144312+03	24	5 day  tour to the ski base in Karakol and the Issyk Kul Lake.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
854	2023-10-14 12:57:47.608038+03	22	Trekking 3: Bishkek-Ala-Kul Lake-Bishkek	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
855	2023-10-14 12:57:59.913579+03	23	Trekking 3: Jety Oguz 7 Days | Bishkek, Karakol, Svetlay polyana, Jety-Oguz, Karakol National Park	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
856	2023-10-14 12:58:10.373933+03	20	4 days tour Around Issyk Kul’s fairytale	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
857	2023-10-14 12:58:21.361764+03	19	Kazakhstan-Kyrgyzstan Group Tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
858	2023-10-14 12:58:56.725786+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
859	2023-10-14 13:01:46.561812+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430 \\u043d\\u0430 \\u044e\\u0442\\u0443\\u0431"]}}]	9	1
860	2023-10-14 13:03:25.952193+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430 \\u043d\\u0430 \\u044e\\u0442\\u0443\\u0431"]}}]	9	1
861	2023-10-14 13:55:02.204238+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u041a\\u0440\\u0430\\u0442\\u043a\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
862	2023-10-14 13:55:15.794505+03	12	Golden Eagle hunting and horse riding 3 days tour	2	[{"changed": {"fields": ["\\u041a\\u0440\\u0430\\u0442\\u043a\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
863	2023-10-14 13:55:22.680392+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041a\\u0440\\u0430\\u0442\\u043a\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
864	2023-10-14 16:04:00.007114+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430 \\u043d\\u0430 \\u044e\\u0442\\u0443\\u0431"]}}]	9	1
865	2023-10-14 16:39:03.535897+03	9	M5	1	[{"added": {}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "M5"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430 \\u0430\\u0440\\u0435\\u043d\\u0434\\u044b", "object": "M5"}}]	24	1
866	2023-10-14 16:40:46.681133+03	181	salam salam	2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	28	1
867	2023-10-15 15:09:15.152241+03	25	7 days best treasures of Kyrgyzstan tour.	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
868	2023-10-15 15:09:15.170723+03	22	Trekking 3: Bishkek-Ala-Kul Lake-Bishkek	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
869	2023-10-15 15:09:15.181153+03	21	Trekking 1: Ala-Archa National Park	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
870	2023-10-15 15:09:15.186747+03	16	Horseback riding in the Chon-Kemin Valley. 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
871	2023-10-15 15:09:15.200663+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
1051	2023-10-18 12:45:50.876734+03	25	The Equestrian Hippodrome in Cholpon-Ata	1	[{"added": {}}]	44	1
873	2023-10-15 16:02:38.588208+03	26	Kyrgyzstan Small Group Tour 2024-2025 from may till September	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
874	2023-10-15 16:02:49.723295+03	25	7 days best treasures of Kyrgyzstan tour.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
875	2023-10-15 16:03:00.129933+03	24	5 day  tour to the ski base in Karakol and the Issyk Kul Lake.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
876	2023-10-15 16:03:26.922013+03	23	Trekking 3: Jety Oguz 7 Days | Bishkek, Karakol, Svetlay polyana, Jety-Oguz, Karakol National Park	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
877	2023-10-15 16:03:40.811049+03	22	Trekking 3: Bishkek-Ala-Kul Lake-Bishkek	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
878	2023-10-15 16:03:51.518024+03	20	4 days tour Around Issyk Kul’s fairytale	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
879	2023-10-15 16:04:43.871482+03	16	Horseback riding in the Chon-Kemin Valley. 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
880	2023-10-15 16:05:25.284718+03	19	Kazakhstan-Kyrgyzstan Group Tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
881	2023-10-15 16:05:59.413213+03	18	Nomadic 9 days Horseriding tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
882	2023-10-15 16:06:20.526759+03	15	Horseback riding in the Chon-Kemin gorge – Shamsi Valley. 6 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
883	2023-10-15 16:06:50.880387+03	17	Horseback riding in the Tian-shan Mountains 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
884	2023-10-16 10:33:47.552682+03	27	Altyn-Arashan 6 days tour	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1300"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1300"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1300"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "1300"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
885	2023-10-16 10:35:40.822602+03	27	Altyn-Arashan 6 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Altyn-Arashan Gorge"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
886	2023-10-16 10:36:35.342042+03	27	Altyn-Arashan 6 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
887	2023-10-16 10:37:17.108977+03	27	Altyn-Arashan 6 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
888	2023-10-16 10:40:03.381596+03	21	Trekking 1: Ala-Archa National Park. 4 Days | Bishkek, Ala Archa. Group size 2-10  start from mid may till September 2024-25	2	[{"changed": {"fields": ["\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
889	2023-10-16 10:42:10.898715+03	22	Trekking 3: Bishkek-Ala-Kul Lake-Bishkek	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
907	2023-10-16 12:56:43.458876+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
1052	2023-10-18 12:47:09.858738+03	26	Altyn-Arashan Gorge	1	[{"added": {}}]	44	1
1057	2023-10-18 12:51:00.450008+03	30	Grigoriev Gorge	1	[{"added": {}}]	44	1
1061	2023-10-18 12:56:25.622491+03	34	Kirov Reservoir	1	[{"added": {}}]	44	1
890	2023-10-16 10:54:54.178095+03	22	Trekking 3: Bishkek-Ala-Kul Lake-Bishkek	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
891	2023-10-16 11:00:14.433179+03	15		2	[{"changed": {"fields": ["\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441"]}}]	33	1
892	2023-10-16 11:13:37.491105+03	28	Yurt to Yurt - Nomadic Culture Tour from june 1st till 5th september	1	[{"added": {}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
893	2023-10-16 11:17:05.218283+03	28	Yurt to Yurt - Nomadic Culture Tour from june 1st till 5th september	2	[{"changed": {"fields": ["\\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c (\\u0434\\u0435\\u043d\\u044c)", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
894	2023-10-16 11:18:09.143071+03	28	Yurt to Yurt - Nomadic Culture Tour from june 1st till 5th september	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
895	2023-10-16 11:20:52.925896+03	28	Yurt to Yurt - Nomadic Culture Tour from june 1st till 5th september	2	[{"changed": {"fields": ["\\u0422\\u0438\\u043f \\u0442\\u0443\\u0440\\u0430", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	9	1
896	2023-10-16 11:21:11.005096+03	28	Yurt to Yurt - Nomadic Culture Tour from june 1st till 5th september	2	[{"changed": {"fields": ["\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
897	2023-10-16 11:21:52.476556+03	28	Yurt to Yurt - Nomadic Culture Tour from june 1st till 5th september	2	[{"changed": {"fields": ["\\u0422\\u0438\\u043f \\u0442\\u0443\\u0440\\u0430", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	9	1
898	2023-10-16 12:32:36.829834+03	29	Mountains and Lakes of Tian Shan Trekking Tour 2024-2025 years  from june 15th till august 15th	1	[{"added": {}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "2300"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "2300"}}, {"added": {"name": "\\u0426\\u0435\\u043d\\u0430", "object": "2300"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}, {"added": {"name": "\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442", "object": "Route"}}]	9	1
899	2023-10-16 12:34:35.428712+03	29	Mountains and Lakes of Tian Shan Trekking Tour 2024-2025 years  from june 15th till august 15th	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
900	2023-10-16 12:36:45.809948+03	29	Mountains and Lakes of Tian Shan Trekking Tour 2024-2025 years  from june 15th till august 15th	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}, {"added": {"name": "\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435", "object": "Image"}}]	9	1
901	2023-10-16 12:41:20.138186+03	16		3		33	1
902	2023-10-16 12:41:20.146835+03	15		3		33	1
903	2023-10-16 12:42:41.766807+03	24	Combined many days tour	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	6	1
904	2023-10-16 12:52:53.644359+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
905	2023-10-16 12:54:23.011519+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
906	2023-10-16 12:56:00.735951+03	12	Golden Eagle hunting and horse riding 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
1044	2023-10-18 12:40:45.751988+03	18	Karakol Gorge (resort Karakol)	1	[{"added": {}}]	44	1
1053	2023-10-18 12:48:13.5487+03	27	Lake Ala-Kol	1	[{"added": {}}]	44	1
1058	2023-10-18 12:52:11.288054+03	31	Batken Region	1	[{"added": {}}]	44	1
908	2023-10-16 12:57:28.886109+03	15	Horseback riding in the Chon-Kemin gorge – Shamsi Valley. 6 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
909	2023-10-16 12:58:17.474204+03	16	Horseback riding in the Chon-Kemin Valley. 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
910	2023-10-16 12:59:05.414767+03	17	Horseback riding in the Tian-shan Mountains 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
911	2023-10-16 12:59:59.09174+03	18	Nomadic 9 days Horseriding tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
912	2023-10-16 13:00:33.084298+03	19	Kazakhstan-Kyrgyzstan Group Tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
913	2023-10-16 13:01:23.971539+03	20	4 days tour Around Issyk Kul’s fairytale	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
914	2023-10-16 13:02:04.163141+03	21	Trekking 1: Ala-Archa National Park. 4 Days | Bishkek, Ala Archa. Group size 2-10  start from mid may till September 2024-25	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435"]}}]	9	1
915	2023-10-16 13:03:08.361468+03	23	Trekking 3: Jety Oguz 7 Days | Bishkek, Karakol, Svetlay polyana, Jety-Oguz, Karakol National Park	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
916	2023-10-16 13:03:48.811914+03	24	5 day  tour to the ski base in Karakol and the Issyk Kul Lake.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
917	2023-10-16 13:04:07.896091+03	25	7 days best treasures of Kyrgyzstan tour.	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
918	2023-10-16 13:08:41.412742+03	26	Kyrgyzstan Small Group Tour 2024-2025 from may till September	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
919	2023-10-16 13:09:54.641296+03	27	Altyn-Arashan 6 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
920	2023-10-16 13:11:03.024702+03	28	Yurt to Yurt - Nomadic Culture Tour from june 1st till 5th september	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
921	2023-10-16 16:26:24.085032+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
922	2023-10-16 16:26:33.220192+03	12	Golden Eagle hunting and horse riding 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
923	2023-10-16 16:26:43.089627+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
924	2023-10-16 16:26:52.735207+03	15	Horseback riding in the Chon-Kemin gorge – Shamsi Valley. 6 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
925	2023-10-16 18:08:38.940653+03	19	Slider object (19)	2	[]	12	1
1045	2023-10-18 12:41:09.193173+03	19	Belogorsk Gorge	1	[{"added": {}}]	44	1
1054	2023-10-18 12:48:56.30346+03	28	Jeti Oguz Gorge	1	[{"added": {}}]	44	1
1059	2023-10-18 12:55:11.201091+03	32	Talas region	1	[{"added": {}}]	44	1
926	2023-10-16 18:10:23.494111+03	12	Golden Eagle hunting and horse riding 3 days tour	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
927	2023-10-17 10:47:20.488057+03	30	Test	1	[{"added": {}}]	9	1
928	2023-10-17 10:54:53.235536+03	11	Horse riding Golden and Eagle hunting 4 days tour	2	[{"changed": {"fields": ["\\u041f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u041a\\u0440\\u0430\\u0442\\u043a\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e", "\\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
929	2023-10-17 10:59:27.063175+03	2	Бишкек	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	47	1
930	2023-10-17 10:59:44.837691+03	1	тест	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	47	1
931	2023-10-17 11:02:40.547282+03	81	Kyrgyzstan-country of nomads life	2	[]	44	1
932	2023-10-17 11:10:28.844259+03	2	Issyk-Kul	2	[{"changed": {"fields": ["\\u042f\\u0437\\u044b\\u043a"]}}]	43	1
933	2023-10-17 11:10:45.802878+03	2	Issyk-Kul	2	[{"changed": {"fields": ["\\u042f\\u0437\\u044b\\u043a"]}}]	43	1
934	2023-10-17 11:11:57.455339+03	2		2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	47	1
935	2023-10-17 11:54:54.230674+03	3	Kyrgyzstan	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	47	1
936	2023-10-17 11:55:37.99119+03	4		1	[{"added": {}}]	47	1
937	2023-10-17 11:56:33.960113+03	4		2	[{"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": "Son-Kol"}}]	47	1
938	2023-10-17 11:57:02.277245+03	3	Kyrgyzstan	2	[]	47	1
939	2023-10-17 11:57:23.181561+03	3	Kyrgyzstan	3		47	1
940	2023-10-17 11:57:37.532367+03	1	тест	3		47	1
941	2023-10-17 12:06:27.567653+03	2		2	[{"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
942	2023-10-17 12:06:58.48911+03	7		1	[{"added": {}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
943	2023-10-17 12:07:19.306154+03	8		1	[{"added": {}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
944	2023-10-17 12:07:59.046476+03	9		1	[{"added": {}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
945	2023-10-17 12:11:21.973929+03	10		1	[{"added": {}}]	47	1
946	2023-10-17 12:18:38.426912+03	11		1	[{"added": {}}]	47	1
947	2023-10-17 12:21:08.774219+03	30	Test	2	[{"changed": {"fields": ["\\u041a\\u0440\\u0430\\u0442\\u043a\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430 \\u043d\\u0430 \\u044e\\u0442\\u0443\\u0431"]}}]	9	1
948	2023-10-17 12:21:38.491833+03	30	Test	3		9	1
949	2023-10-17 12:21:56.707991+03	10		3		47	1
950	2023-10-17 12:21:56.71266+03	9		3		47	1
951	2023-10-17 12:21:56.715502+03	8		3		47	1
952	2023-10-17 12:22:18.234661+03	7		3		47	1
953	2023-10-17 12:22:18.239848+03	4		3		47	1
954	2023-10-17 12:22:54.600228+03	12		1	[{"added": {}}]	47	1
955	2023-10-17 12:23:06.596384+03	12		2	[]	47	1
956	2023-10-17 12:24:39.584331+03	13		1	[{"added": {}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
957	2023-10-17 12:26:08.151179+03	14	Kyrgyzstan	1	[{"added": {}}]	47	1
958	2023-10-17 12:26:35.089599+03	15	Kyrgyzstan	1	[{"added": {}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
959	2023-10-17 12:27:42.833104+03	16	Chuy region	1	[{"added": {}}]	47	1
960	2023-10-17 12:28:04.757644+03	16	Chuy region	2	[{"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": "Kyrgyzstan"}}]	47	1
961	2023-10-17 12:29:16.297139+03	15	Kyrgyzstan	3		47	1
962	2023-10-17 12:29:16.30213+03	13		3		47	1
963	2023-10-17 12:29:51.627471+03	17		1	[{"added": {}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
964	2023-10-17 12:30:20.184026+03	17		2	[{"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
965	2023-10-17 12:40:49.843415+03	17		3		47	1
966	2023-10-17 12:51:28.732722+03	12	Golden Eagle hunting and horse riding 3 days tour	2	[{"changed": {"fields": ["\\u041f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u041a\\u0440\\u0430\\u0442\\u043a\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
967	2023-10-17 13:35:16.097956+03	18		1	[{"added": {}}]	47	1
968	2023-10-17 13:35:49.596903+03	19		1	[{"added": {}}]	47	1
969	2023-10-17 13:36:29.163741+03	11		3		47	1
970	2023-10-17 13:36:54.692848+03	18		3		47	1
971	2023-10-17 14:04:18.473198+03	20		1	[{"added": {}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
972	2023-10-17 14:04:37.571027+03	21		1	[{"added": {}}]	47	1
973	2023-10-17 14:04:55.188165+03	20		3		47	1
974	2023-10-17 14:05:13.319567+03	22		1	[{"added": {}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
975	2023-10-17 14:23:38.321619+03	23		1	[{"added": {}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": "Son-Kol"}}]	47	1
976	2023-10-17 14:24:48.346981+03	23		2	[{"changed": {"fields": ["\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	47	1
977	2023-10-17 14:35:43.131899+03	23		3		47	1
978	2023-10-17 14:38:16.532658+03	22		3		47	1
979	2023-10-17 14:38:16.537259+03	21		3		47	1
980	2023-10-17 14:38:16.546697+03	19		3		47	1
981	2023-10-17 14:38:16.551698+03	16	Chuy region	3		47	1
982	2023-10-17 14:40:14.367903+03	24		1	[{"added": {}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
983	2023-10-17 14:41:26.939287+03	14	Kyrgyzstan	2	[{"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
984	2023-10-17 14:42:25.764786+03	14	Kyrgyzstan	2	[{"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
985	2023-10-17 14:42:59.950979+03	2		3		47	1
986	2023-10-17 14:53:43.281326+03	12		3		47	1
987	2023-10-17 15:01:45.901974+03	18	Slider object (18)	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0434\\u0437\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a"]}}]	12	1
1046	2023-10-18 12:41:40.129987+03	20	Prjevalskiy museum.	1	[{"added": {}}]	44	1
988	2023-10-17 15:40:27.010287+03	14	Horse Riding Tour in Kyrgyzstan, Naryn	2	[{"changed": {"fields": ["\\u041f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u041a\\u0440\\u0430\\u0442\\u043a\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435", "\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043e"]}}]	9	1
989	2023-10-17 15:46:04.603378+03	14	Kyrgyzstan	2	[{"changed": {"fields": ["\\u042f\\u0437\\u044b\\u043a"]}}]	47	1
990	2023-10-17 15:46:37.05958+03	14	Kyrgyzstan	2	[{"changed": {"fields": ["\\u042f\\u0437\\u044b\\u043a"]}}]	47	1
991	2023-10-17 15:59:21.588433+03	25		1	[{"added": {}}]	47	1
992	2023-10-17 16:01:54.547392+03	25		2	[{"changed": {"fields": ["\\u042f\\u0437\\u044b\\u043a"]}}]	47	1
993	2023-10-17 16:04:10.881194+03	25		2	[{"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
994	2023-10-17 18:34:00.051628+03	1	wer	1	[{"added": {}}]	43	1
995	2023-10-17 18:34:36.958007+03	1	wer	1	[{"added": {}}]	44	1
996	2023-10-18 08:56:23.672648+03	1	Test	1	[{"added": {}}]	31	1
997	2023-10-18 08:58:16.108616+03	1	Настройки создания тура	1	[{"added": {}}, {"added": {"name": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "object": "Category"}}, {"added": {"name": "\\u0420\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u0435", "object": "Hotel"}}, {"added": {"name": "\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435", "object": "Dinner"}}, {"added": {"name": "\\u0422\\u0440\\u0430\\u043d\\u0441\\u043f\\u043e\\u0440\\u0442", "object": "SUV"}}]	40	1
998	2023-10-18 09:03:43.33157+03	1	Настройки создания тура на en	2	[]	40	1
999	2023-10-18 09:05:51.287347+03	2	Настройки создания тура (ru)	1	[{"added": {}}, {"added": {"name": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f", "object": "\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f"}}, {"added": {"name": "\\u0420\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u0435", "object": "\\u0413\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0430"}}, {"added": {"name": "\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435", "object": "\\u0423\\u0436\\u0438\\u043d"}}, {"added": {"name": "\\u0422\\u0440\\u0430\\u043d\\u0441\\u043f\\u043e\\u0440\\u0442", "object": "\\u0421\\u0435\\u0434\\u0430\\u043d"}}]	40	1
1000	2023-10-18 09:11:50.832738+03	21	Horse riding tours	2	[{"changed": {"fields": ["\\u042f\\u0437\\u044b\\u043a"]}}]	6	1
1001	2023-10-18 09:12:02.556858+03	21	Horse riding tours	2	[{"changed": {"fields": ["\\u042f\\u0437\\u044b\\u043a"]}}]	6	1
1002	2023-10-18 10:58:29.162834+03	8	Slider object (8)	2	[{"changed": {"fields": ["\\u042f\\u0437\\u044b\\u043a"]}}]	12	1
1003	2023-10-18 10:59:08.133894+03	8	Slider object (8)	2	[{"changed": {"fields": ["\\u042f\\u0437\\u044b\\u043a"]}}]	12	1
1004	2023-10-18 11:10:41.745486+03	3	Настройки создания тура (de)	1	[{"added": {}}]	40	1
1005	2023-10-18 11:10:49.647903+03	4	Настройки создания тура (fr)	1	[{"added": {}}]	40	1
1006	2023-10-18 11:11:02.892679+03	5	Настройки создания тура (es)	1	[{"added": {}}]	40	1
1007	2023-10-18 11:11:12.357566+03	6	Настройки создания тура (jp)	1	[{"added": {}}]	40	1
1008	2023-10-18 11:24:12.692014+03	1	wer	3		43	1
1009	2023-10-18 11:24:30.210191+03	2	Kyrgyzstan	1	[{"added": {}}]	43	1
1010	2023-10-18 11:24:41.380855+03	2	Chuy region	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	43	1
1011	2023-10-18 11:25:03.049258+03	2	Kyrgyzstan	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	43	1
1012	2023-10-18 11:25:18.189968+03	3	Chuy region	1	[{"added": {}}]	43	1
1013	2023-10-18 11:25:29.209457+03	4	Issyk-Kul	1	[{"added": {}}]	43	1
1014	2023-10-18 11:25:50.886963+03	5	Naryn region	1	[{"added": {}}]	43	1
1015	2023-10-18 11:26:13.955711+03	6	Osh region	1	[{"added": {}}]	43	1
1016	2023-10-18 11:26:32.28091+03	7	Batken region	1	[{"added": {}}]	43	1
1017	2023-10-18 11:26:53.183271+03	8	Talas region	1	[{"added": {}}]	43	1
1018	2023-10-18 11:27:17.371193+03	9	Jalal-Abad region	1	[{"added": {}}]	43	1
1019	2023-10-18 11:27:28.438436+03	4	Issyk-Kul region	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	43	1
1020	2023-10-18 11:30:38.857964+03	2	Kyrgyzstan-country of nomads life	1	[{"added": {}}]	44	1
1021	2023-10-18 11:35:53.049949+03	2	Kyrgyzstan-country of nomads life	2	[{"changed": {"fields": ["\\u041f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	44	1
1022	2023-10-18 11:37:49.779737+03	3	Chuy Region in Kyrgyzstan.	1	[{"added": {}}]	44	1
1023	2023-10-18 11:40:14.1304+03	2	Kyrgyzstan-country of nomads life	2	[{"changed": {"fields": ["\\u041f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	44	1
1024	2023-10-18 11:41:48.75457+03	3	Chuy Region in Kyrgyzstan.	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
1025	2023-10-18 11:42:20.156859+03	2	Kyrgyzstan-country of nomads life	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
1026	2023-10-18 11:46:59.185193+03	4	Suusamir Valley	1	[{"added": {}}]	44	1
1027	2023-10-18 11:48:21.433732+03	4	Suusamir Valley	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430"]}}]	44	1
1028	2023-10-18 11:52:34.427162+03	5	Burana Tower.	1	[{"added": {}}]	44	1
1029	2023-10-18 12:05:31.987869+03	6	The Ala-Archa National Par	1	[{"added": {}}]	44	1
1030	2023-10-18 12:20:33.662384+03	7	The Kegety Gorge	1	[{"added": {}}]	44	1
1031	2023-10-18 12:22:47.366266+03	1		1	[{"added": {}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
1032	2023-10-18 12:23:35.316254+03	2		1	[{"added": {}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
1033	2023-10-18 12:23:50.748275+03	3		1	[{"added": {}}, {"added": {"name": "\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f", "object": ""}}]	47	1
1034	2023-10-18 12:27:09.743259+03	8	Issyk-Kul lake	1	[{"added": {}}]	44	1
1035	2023-10-18 12:30:23.964908+03	9	Chunkurchak gorge	1	[{"added": {}}]	44	1
1036	2023-10-18 12:31:10.151042+03	10	Karakol city.	1	[{"added": {}}]	44	1
1037	2023-10-18 12:32:44.2012+03	11	Chong kemin Valley	1	[{"added": {}}]	44	1
1038	2023-10-18 12:34:04.202789+03	12	Chinese-style wooden mosque	1	[{"added": {}}]	44	1
1039	2023-10-18 12:34:24.094064+03	13	Issyk-Ata gorge	1	[{"added": {}}]	44	1
1040	2023-10-18 12:35:57.569538+03	14	Konorchek Canyon	1	[{"added": {}}]	44	1
1041	2023-10-18 12:38:16.236718+03	15	The Church of the Holy Trinity	1	[{"added": {}}]	44	1
1042	2023-10-18 12:38:47.471853+03	16	Shamsi Gorge	1	[{"added": {}}]	44	1
1043	2023-10-18 12:39:17.39427+03	17	The Church of the Holy Trinity	1	[{"added": {}}]	44	1
1062	2023-10-18 12:57:37.645391+03	35	Manas-Ordo Historical Complex	1	[{"added": {}}]	44	1
1063	2023-10-18 12:58:34.526484+03	36	Besh Tash Lake (Besh Tash nature reserve)	1	[{"added": {}}]	44	1
1064	2023-10-18 12:59:19.650374+03	37	Bes-Tash Nature Reserve	1	[{"added": {}}]	44	1
1065	2023-10-18 13:00:15.625321+03	38	Jayloo in Talas	1	[{"added": {}}]	44	1
1066	2023-10-18 13:02:46.075165+03	39	Jergalan	1	[{"added": {}}]	44	1
1067	2023-10-18 13:03:47.486716+03	40	Osh Region	1	[{"added": {}}]	44	1
1068	2023-10-18 13:03:51.35412+03	41	Salt Lake	1	[{"added": {}}]	44	1
1069	2023-10-18 13:03:55.526123+03	30	Grigoriev Gorge	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	44	1
1070	2023-10-18 13:04:30.254947+03	42	Osh city	1	[{"added": {}}]	44	1
1071	2023-10-18 13:04:40.867112+03	43	Lake Teshik Kul	1	[{"added": {}}]	44	1
1072	2023-10-18 13:05:10.591996+03	8	Issyk-Kul lake	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	44	1
1073	2023-10-18 13:05:30.678255+03	44	Arabel Valley	1	[{"added": {}}]	44	1
1074	2023-10-18 13:05:33.754369+03	45	Sulayman Too	1	[{"added": {}}]	44	1
1075	2023-10-18 13:05:51.979486+03	10	Karakol city.	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	44	1
1076	2023-10-18 13:06:11.009935+03	46	Semenov Gorge	1	[{"added": {}}]	44	1
1077	2023-10-18 13:06:14.749634+03	47	Chychkan Gorge	1	[{"added": {}}]	44	1
1078	2023-10-18 13:06:33.110917+03	12	Chinese-style wooden mosque	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	44	1
1079	2023-10-18 13:07:02.597986+03	48	Taldyk Pass	1	[{"added": {}}]	44	1
1080	2023-10-18 13:07:08.391208+03	15	The Church of the Holy Trinity	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	44	1
1081	2023-10-18 13:07:26.179964+03	49	Barskoon Gorge	1	[{"added": {}}]	44	1
1082	2023-10-18 13:07:41.702744+03	50	Uzgen	1	[{"added": {}}]	44	1
1083	2023-10-18 13:07:43.854858+03	17	The Church of the Holy Trinity	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	44	1
1084	2023-10-18 13:08:07.949523+03	51	Tosor Gorge	1	[{"added": {}}]	44	1
1085	2023-10-18 13:08:42.350953+03	52	Tulpar kul Lake	1	[{"added": {}}]	44	1
1086	2023-10-18 13:08:49.132894+03	18	Karakol Gorge (resort Karakol)	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	44	1
1087	2023-10-18 13:09:25.041259+03	53	Alai Valley	1	[{"added": {}}]	44	1
1088	2023-10-18 13:09:42.919266+03	20	Prjevalskiy museum.	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	44	1
1089	2023-10-18 13:10:32.027436+03	54	Kulung Lake	1	[{"added": {}}]	44	1
1090	2023-10-18 13:10:59.413363+03	55	Jalal-Abad Region	1	[{"added": {}}]	44	1
1091	2023-10-18 13:12:47.172369+03	56	Naryn region	1	[{"added": {}}]	44	1
1092	2023-10-18 13:12:50.508135+03	57	Lenin Peak	1	[{"added": {}}]	44	1
1093	2023-10-18 13:13:09.653271+03	56	Naryn region	2	[{"changed": {"fields": ["\\u041f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	44	1
1094	2023-10-18 13:13:34.627145+03	58	Kyrgyz- Ata Nature Reserve	1	[{"added": {}}]	44	1
1095	2023-10-18 13:14:02.671716+03	59	Son-Kul Lake	1	[{"added": {}}]	44	1
1096	2023-10-18 13:14:17.422407+03	60	Abshir Ata	1	[{"added": {}}]	44	1
1097	2023-10-18 13:14:45.813466+03	61	Kel-suu	1	[{"added": {}}]	44	1
1098	2023-10-18 13:15:09.401059+03	62	Chil-Ushtun Cave	1	[{"added": {}}]	44	1
1099	2023-10-18 13:15:26.403851+03	63	Chichkan Gorge	1	[{"added": {}}]	44	1
1100	2023-10-18 13:16:07.486235+03	64	Jayloo in Osh	1	[{"added": {}}]	44	1
1101	2023-10-18 13:16:20.783792+03	65	Tash Rabat	1	[{"added": {}}]	44	1
1102	2023-10-18 13:16:26.39153+03	66	Kara-Su Lake.	1	[{"added": {}}]	44	1
1103	2023-10-18 13:17:28.072933+03	67	Arslanbob Forest	1	[{"added": {}}]	44	1
1104	2023-10-18 13:18:08.428972+03	68	Kekemeren gorge	1	[{"added": {}}]	44	1
1105	2023-10-18 13:18:25.311167+03	69	Petroglyphs of Saimaluu-Tash	1	[{"added": {}}]	44	1
1106	2023-10-18 13:18:43.69132+03	70	Lake Chatir Kul.	1	[{"added": {}}]	44	1
1107	2023-10-18 13:19:23.09559+03	71	Sary- Chelek Lake	1	[{"added": {}}]	44	1
1108	2023-10-18 13:19:23.968833+03	72	Kara-Keche gorge	1	[{"added": {}}]	44	1
1109	2023-10-18 13:20:04.599553+03	73	Jayloo in Naryn	1	[{"added": {}}]	44	1
1110	2023-10-18 13:20:27.331059+03	74	Naryn Canyon	1	[{"added": {}}]	44	1
1111	2023-10-18 13:21:04.850611+03	75	Toktogul Reservoir	1	[{"added": {}}]	44	1
1112	2023-10-18 13:21:16.598952+03	21	Cholpon-Ata city	2	[{"changed": {"fields": ["\\u041f\\u043e\\u0441\\u0442\\u0435\\u0440"]}}]	44	1
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-09-26 12:09:45.490032+03
2	contenttypes	0002_remove_content_type_name	2023-09-26 12:09:45.503736+03
3	auth	0001_initial	2023-09-26 12:09:45.588598+03
4	auth	0002_alter_permission_name_max_length	2023-09-26 12:09:45.598173+03
5	auth	0003_alter_user_email_max_length	2023-09-26 12:09:45.607709+03
6	auth	0004_alter_user_username_opts	2023-09-26 12:09:45.635876+03
7	auth	0005_alter_user_last_login_null	2023-09-26 12:09:45.645936+03
8	auth	0006_require_contenttypes_0002	2023-09-26 12:09:45.650299+03
9	auth	0007_alter_validators_add_error_messages	2023-09-26 12:09:45.662124+03
10	auth	0008_alter_user_username_max_length	2023-09-26 12:09:45.67349+03
11	auth	0009_alter_user_last_name_max_length	2023-09-26 12:09:45.681685+03
12	auth	0010_alter_group_name_max_length	2023-09-26 12:09:45.692278+03
13	auth	0011_update_proxy_permissions	2023-09-26 12:09:45.711711+03
14	auth	0012_alter_user_first_name_max_length	2023-09-26 12:09:45.731466+03
15	account	0001_initial	2023-09-26 12:09:45.837507+03
16	admin	0001_initial	2023-09-26 12:09:45.878802+03
17	admin	0002_logentry_remove_auto_add	2023-09-26 12:09:45.893554+03
18	admin	0003_logentry_add_action_flag_choices	2023-09-26 12:09:45.913306+03
19	car_rent	0001_initial	2023-09-26 12:09:46.029232+03
20	car_rent	0002_alter_carrentalrequest_options	2023-09-26 12:09:46.047629+03
21	tours	0001_initial	2023-09-26 12:09:46.35644+03
22	clients	0001_initial	2023-09-26 12:09:46.515092+03
23	clients	0002_alter_faq_options_alter_sitereviews_options	2023-09-26 12:09:46.534672+03
24	lead	0001_initial	2023-09-26 12:09:46.649952+03
25	sessions	0001_initial	2023-09-26 12:09:46.692028+03
26	tours	0002_alter_region_img_alter_tour_cat	2023-09-26 12:09:46.743867+03
27	car_rent	0002_alter_carrentalrequest_options_and_more	2023-09-27 12:25:31.185569+03
28	car_rent	0003_alter_carrentalrequest_datefrom_and_more	2023-09-27 12:26:00.705653+03
29	car_rent	0004_alter_carrentalrequest_car_and_more	2023-09-27 14:00:58.072022+03
31	main	0002_accommodation_createowntourrec_meals_transport_and_more	2023-09-27 14:25:21.769046+03
32	main	0003_alter_createowntourrec_options_and_more	2023-09-27 14:33:51.698864+03
33	main	0004_alter_categories_options_alter_accommodation_rec_and_more	2023-09-27 14:44:58.137336+03
34	main	0005_alter_categories_rec	2023-09-27 14:46:38.480426+03
35	main	0006_createowntour_alter_categories_options	2023-09-27 15:46:36.200774+03
36	tours	0003_delete_createowntour	2023-09-27 15:46:36.213868+03
37	main	0007_createowntour_gid	2023-09-27 16:00:24.677621+03
38	car_rent	0005_alter_carrentalrequest_status	2023-09-27 16:29:31.912341+03
39	main	0008_articlecats_articles_articleimages	2023-09-27 16:29:31.989653+03
40	main	0009_alter_articlecats_options_articles_cat_and_more	2023-09-27 17:22:36.276115+03
41	main	0010_alter_articles_cat	2023-09-27 17:26:46.838248+03
42	tours	0004_alter_images_options	2023-09-28 11:33:29.959523+03
43	main	0011_remove_createowntour_first_name_and_more	2023-09-28 12:07:10.864913+03
44	main	0012_alter_articles_cat	2023-09-28 12:22:34.511046+03
45	main	0013_alter_createowntour_cats	2023-09-28 13:02:19.977248+03
46	main	0014_articles_created_at_articles_views	2023-09-28 14:09:39.845879+03
47	main	0015_alter_articles_created_at	2023-09-28 14:11:44.33735+03
48	lead	0002_alter_leadtraveler_nationality	2023-09-28 14:55:16.462993+03
49	main	0016_alter_createowntour_options_and_more	2023-09-28 14:55:16.478921+03
50	lead	0003_remove_leadtraveler_address_remove_leadtraveler_city	2023-09-28 15:30:19.290646+03
51	main	0017_alter_articles_link_alter_createowntour_cats	2023-09-29 15:02:45.124619+03
52	tours	0005_tour_youtube_link_alter_tourreviews_date	2023-10-03 11:34:32.831848+03
53	tours	0006_remove_category_region_alter_tour_youtube_link_and_more	2023-10-03 12:25:47.401041+03
54	tours	0007_alter_tour_cat	2023-10-03 12:40:30.02431+03
55	tours	0008_alter_tour_youtube_link	2023-10-03 12:41:35.591236+03
56	main	0018_rename_first_name_requests_full_name_and_more	2023-10-03 13:17:20.091303+03
57	main	0019_alter_createowntour_accommodation	2023-10-03 13:43:25.117887+03
58	main	0020_gallery_galleryimages	2023-10-11 12:12:33.534874+03
59	main	0021_alter_gallery_options_alter_galleryimages_options_and_more	2023-10-11 12:20:56.367585+03
60	main	0022_gallery_name_en_gallery_name_ru_and_more	2023-10-13 14:44:59.06169+03
61	main	0023_remove_gallery_name_en_remove_gallery_name_ru_and_more	2023-10-13 15:09:38.540511+03
62	main	0024_gallery_lang	2023-10-13 15:13:38.42613+03
63	tours	0009_tour_short_desc_alter_tour_description	2023-10-14 13:49:05.439645+03
64	main	0025_gallery_poster_gallery_youtube_link	2023-10-14 16:39:57.502228+03
65	tours	0010_alter_tour_description_alter_tour_short_desc	2023-10-14 16:39:57.544944+03
66	main	0026_articles_lang	2023-10-17 10:34:19.904946+03
67	main	0027_alter_gallery_lang	2023-10-17 10:34:19.921636+03
68	main	0028_articlecats_lang	2023-10-17 10:38:01.665013+03
69	tours	0011_alter_tour_description_alter_tour_short_desc	2023-10-17 10:51:21.837948+03
70	main	0029_alter_articles_lang	2023-10-17 10:56:42.68777+03
71	tours	0012_alter_tour_short_desc	2023-10-17 10:56:42.710677+03
72	main	0030_alter_gallery_name	2023-10-17 11:07:02.167254+03
73	main	0031_alter_galleryimages_name	2023-10-17 12:03:53.132772+03
74	main	0032_gallery_video	2023-10-17 12:28:59.014381+03
75	main	0033_remove_gallery_video	2023-10-17 12:50:05.781604+03
76	main	0034_remove_gallery_poster	2023-10-17 16:26:44.545587+03
77	main	0035_alter_galleryimages_name	2023-10-17 16:26:44.58255+03
78	tours	0013_tour_lang	2023-10-17 16:26:44.614748+03
79	tours	0014_slider_lang	2023-10-17 16:29:15.05585+03
80	main	0036_languages_alter_articles_cat_alter_articlecats_lang	2023-10-17 17:50:06.637656+03
81	main	0037_alter_articles_cat	2023-10-17 17:50:06.713961+03
82	main	0038_alter_articles_cat	2023-10-17 17:50:06.753508+03
83	main	0039_alter_articles_cat	2023-10-17 17:50:06.785237+03
84	main	0040_remove_articlecats_lang	2023-10-17 17:50:06.833955+03
85	main	0041_articlecats_lang	2023-10-17 17:50:06.856411+03
86	main	0042_alter_articles_lang	2023-10-17 17:50:06.901097+03
87	main	0043_remove_articles_lang	2023-10-17 17:50:06.920717+03
88	main	0044_articles_lang	2023-10-17 17:50:06.948151+03
89	main	0045_remove_articlecats_lang_remove_articles_lang_and_more	2023-10-17 17:50:06.990287+03
90	main	0046_languages_articles_lang_gallery_lang_and_more	2023-10-17 17:50:07.040932+03
91	main	0047_remove_articlecats_lang_remove_articles_lang	2023-10-17 17:50:07.068779+03
92	main	0048_articlecats_lang_articles_lang	2023-10-17 17:50:07.119599+03
93	main	0049_alter_articlecats_lang	2023-10-17 17:50:07.193285+03
94	main	0050_alter_articlecats_lang	2023-10-17 17:50:07.237358+03
95	main	0051_remove_articlecats_lang	2023-10-17 17:50:07.261937+03
96	main	0001_initial	2023-10-17 17:56:31.112118+03
97	main	0002_delete_languages_alter_articlecats_lang	2023-10-18 08:50:29.029606+03
98	main	0003_faq_lang	2023-10-18 08:56:04.76591+03
99	main	0004_createowntourrec_lang_alter_articlecats_lang_and_more	2023-10-18 09:02:45.740702+03
100	tours	0015_category_lang	2023-10-18 09:10:02.957037+03
101	car_rent	0006_cartype_lang	2023-10-18 09:24:24.451308+03
102	car_rent	0007_car_lang	2023-10-18 09:24:49.02033+03
103	car_rent	0008_alter_car_lang_alter_cartype_lang	2023-10-18 11:37:53.214141+03
104	main	0005_alter_articlecats_lang_alter_articles_lang_and_more	2023-10-18 11:37:53.241487+03
105	tours	0016_tour_price_for_alter_category_lang_alter_slider_lang_and_more	2023-10-18 11:37:53.308679+03
106	tours	0017_alter_tour_price_for	2023-10-18 11:39:04.00102+03
107	tours	0018_alter_tour_price_for	2023-10-18 11:43:25.014745+03
108	main	0006_alter_articles_poster	2023-10-18 12:26:58.16411+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
djbqyk9fmwuwevccx7ranbcjxq33wu4t	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1ql4C3:kRPMPJ6tY0wMUdLxjPYQBASfyKUC3vHaE-3_oYEMU70	2023-10-10 12:17:23.819872+03
997b9budwfl0broavwsrhi5du0irdguj	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qlSEi:Q1FaX197MK08Lxy58mlOuAC3M-v6XSX5jewk_PSXt8A	2023-10-11 13:57:44.162889+03
d8tcfdjv2022rzq35g3dcblsc0krw7mf	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qmW2f:tSVwh3hda2bZhg1DB45_HIcQJ88eSsShSeq61q0OBRs	2023-10-14 12:13:41.838393+03
7788l6tkofmgnt1fazmgjk9nlfxx8tud	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qmX78:34XQMtbGa1mWMxqYZKiTA-ULVNr2Xd4JSkJ9wzy4QbE	2023-10-14 13:22:22.893829+03
zyh63qc3rdjt4s00kpkq173zbgpdz3f8	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qmYlM:UBsvXA5PXL8eLJb19jhqgns_uVF2YZARbDOdk2zuU60	2023-10-14 15:08:00.882284+03
ndv6qx1ldymqm94p0x5sxeva270p23fg	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qnFOG:lDhdvkZIwp3Q59JaHVpso6K1M6iMciPjxHJE2fhaNSo	2023-10-16 12:39:00.735188+03
5d6yyedqwwniqszu7vhxuui57y4evynr	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qnJDv:_GqZn1jtkx7LCjW4b7bYEtVyCTKs9RfcvHu-mF3hBa8	2023-10-16 16:44:35.660898+03
i7z4opsgq78n7qxj725hahyookqdyy9e	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qnyAd:WK5-CZOQywbL6OO-sz4ubFNSvn9m44jw-NuV0JWivCY	2023-10-18 12:27:55.612996+03
o6yy80uxnyfq2s5jxd3vye3cd3jilum8	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qo05T:biBC8nS3lnqWsMY3VLYLmnI8gLAH6DosgycR8zz6ojE	2023-10-18 14:30:43.734898+03
4dycgg3serg5s0wddzal69j9z58p55sx	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qoOe5:7G15H7_HHBeNkgk6jNngqr7HIyANS3-y0klIM8SZ1KM	2023-10-19 16:44:05.233941+03
go8azgxipdf2ga0ngjbeyzlg1lkug6ne	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qpo6o:sHjpeKppTXAxCBejIb27Mq-bxKw9HhuVn8cixS2ansk	2023-10-23 14:07:34.707025+03
01cqo3fgufp23uykdphaluuile9u9ajh	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qppzD:iVsvC_Eyozdf-gvTm27-S7qdm9ioRLSU3XXvlr6mBZE	2023-10-23 16:07:51.612378+03
kh8e8pyluyrpkv7z4sw4iapnkq13pfcn	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qq925:OKlkX2NmreHH7bOp-bDfz4PuAR8QSE-fIjiOiI411RY	2023-10-24 12:28:05.082838+03
4a50ousud0dbniz4myx2ldx69ir5fa0y	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qqoFF:BXAQjGQ59k58hCFePqij3WXrQeW5ahYItF-XuzBhdPo	2023-10-26 08:28:25.621935+03
mx7f1lw8388xpkwz0ebs2j3pyt5s8wn1	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qrHTt:SxTkwlh7cpMUcoyakWRjqoYobqb4AKuke2vTwGyj-WI	2023-10-27 15:41:29.77698+03
ng6c8dfs2d7c91kkcryq9zrn74r2jalu	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qt2qy:US11NoD666pZSKXUkQilUXUCcvV1HZX4mhd2SUBdJKQ	2023-11-01 12:28:36.313016+03
qwj3hszuk1z2jwbmua6rj6hnrv9u7jqr	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qt3BO:9V0NiNemBR2wbXbZVR0b6EN3KcJJHMZlCy5IEXFWdLU	2023-11-01 12:49:42.606228+03
9dkwi5vok5nagr5emprvk0mfxewfjcnh	.eJxVjEEOwiAQRe_C2hChMENduvcMZJhBqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqkjDr8bon4kesG5E711jS3usxT0puid9r1pUl-nnf376BQL996OEISBz4FFEZnYURMFJy4AQjIuIDeWHTEKcOVLVMARD9aQ0Y4oHp_AMnwN1E:1qt3Tc:oPRn0HEY60ZxQKZDC8W33rHy-mEkP_vkpqmC6m36Bts	2023-11-01 13:08:32.214664+03
\.


--
-- Data for Name: tours_prices; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.tours_prices (id, price, currency, status, deadline, start, "end", tour_id) FROM stdin;
12	1345	USD	1	2024-04-10	2024-05-05	2024-05-09	11
13	1345	USD	1	2024-05-10	2024-06-05	2024-06-09	11
14	1345	USD	1	2024-06-15	2024-07-05	2024-07-09	11
15	1300	USD	1	2024-07-15	2024-08-05	2024-08-09	11
16	760	USD	1	2024-04-15	2024-05-01	2024-05-04	12
18	1150	USD	1	2024-05-31	2024-06-10	2024-06-15	14
19	1150	USD	1	2024-06-30	2024-07-10	2024-07-15	14
20	1150	USD	1	2024-07-31	2024-08-10	2024-08-15	14
21	1755	USD	1	2024-06-25	2024-07-10	2024-07-16	15
22	1755	USD	1	2024-07-26	2024-08-10	2024-08-16	15
23	1755	USD	1	2024-08-22	2024-09-05	2024-09-11	15
24	1023	USD	1	2024-05-28	2024-06-07	2024-06-10	16
25	1023	USD	1	2024-06-28	2024-07-07	2024-07-10	16
26	1023	USD	1	2024-07-28	2024-08-07	2024-08-10	16
27	1023	USD	1	2024-08-21	2024-09-01	2024-09-03	16
28	1063	USD	1	2024-06-23	2024-07-01	2024-07-03	17
29	1063	USD	1	2024-07-21	2024-08-01	2024-08-03	17
30	1063	USD	1	2024-08-24	2024-09-03	2024-09-06	17
31	2758	USD	1	2024-05-30	2024-06-09	2024-06-18	18
32	2758	USD	1	2024-06-29	2024-07-09	2024-07-18	18
33	2758	USD	1	2024-07-29	2024-08-09	2024-08-18	18
34	2700	USD	1	2024-08-29	2024-09-01	2024-09-10	18
35	2200	USD	1	2024-06-01	2024-06-10	2024-06-18	19
36	2200	USD	1	2024-07-10	2024-07-22	2024-07-30	19
37	2200	USD	1	2024-08-01	2024-08-12	2024-08-20	19
38	2200	USD	1	2024-08-22	2024-09-02	2024-09-10	19
39	1240	USD	1	\N	2023-12-01	2024-12-31	20
44	\N	USD	1	2024-05-05	2024-05-15	2024-05-22	22
45	\N	USD	1	2024-05-26	2024-06-07	2024-06-14	22
46	\N	USD	1	2024-07-08	2024-07-17	2024-07-24	22
47	\N	USD	1	2024-08-04	2024-08-14	2024-08-21	22
40	\N	USD	1	2024-04-30	2024-05-15	2024-05-19	21
41	\N	USD	1	2024-05-31	2024-06-15	2024-06-19	21
42	\N	USD	1	2024-06-30	2024-07-15	2024-07-19	21
43	\N	USD	1	2024-08-14	2024-08-20	2024-08-24	21
48	1000	USD	1	2023-11-18	2023-11-28	2023-12-03	24
49	1000	USD	1	2023-12-01	2023-12-08	2023-12-13	24
50	1000	USD	1	2023-12-10	2023-12-18	2023-12-23	24
51	1280	USD	1	2024-05-13	2024-05-23	2024-05-30	26
52	1280	USD	1	2024-06-12	2024-06-23	2024-06-30	26
53	1280	USD	1	2024-07-12	2024-07-23	2024-07-30	26
54	1280	USD	1	2024-08-12	2024-08-23	2024-08-30	26
55	1300	USD	1	2024-05-20	2024-06-01	2024-06-06	27
56	1300	USD	1	2024-06-21	2024-07-01	2024-07-06	27
57	1300	USD	1	2024-07-20	2024-08-01	2024-08-06	27
58	1300	USD	1	2024-08-21	2024-09-01	2024-09-06	27
59	2300	USD	1	2024-06-05	2024-06-15	2024-06-26	29
60	2300	USD	1	2024-07-05	2024-07-15	2024-07-26	29
61	2300	USD	1	2024-07-25	2024-08-05	2024-08-16	29
\.


--
-- Data for Name: lead_leadtraveler; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.lead_leadtraveler (id, first_name, last_name, email, phone, dateofborn, gender, nationality, price_id, tour_id) FROM stdin;
\.


--
-- Data for Name: lead_travelers; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.lead_travelers (id, first_name, last_name, dateofborn, gender, nationality, lead_id) FROM stdin;
\.


--
-- Data for Name: main_createowntourrec; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_createowntourrec (id, lang) FROM stdin;
1	en
2	ru
3	de
4	fr
5	es
6	jp
\.


--
-- Data for Name: main_accommodation; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_accommodation (id, name, rec_id) FROM stdin;
1	Hotel	1
2	Гостиница	2
\.


--
-- Data for Name: main_faq; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_faq (id, name, lang) FROM stdin;
1	Test	en
\.


--
-- Data for Name: main_answer; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_answer (id, question, answer, faq_id) FROM stdin;
\.


--
-- Data for Name: main_articlecats; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_articlecats (id, lang, name) FROM stdin;
2	en	Kyrgyzstan
3	en	Chuy region
5	en	Naryn region
6	en	Osh region
7	en	Batken region
8	en	Talas region
9	en	Jalal-Abad region
4	en	Issyk-Kul region
\.


--
-- Data for Name: main_articles; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_articles (id, lang, title, short_desc, full_desc, poster, link, created_at, views, cat_id) FROM stdin;
4	en	Suusamir Valley	The Suusamir Valley is located between the Suusamir  of the Tien Shan Mountains in Central Asia	<p><strong>Suusamir Valley</strong></p>\r\n\r\n<p>The Suusamir Valley is located between the Suusamir &nbsp;of the Tien Shan Mountains in Central Asia and the Ala Too Mountains in Kyrgyzstan, between 2,000 and 2,500 meters above sea level. The Suusamir River flows through the region. Located in the Chu region of Kyrgyzstan, the valley is used as a summer alpine grazing area full of grasses and wild flowers. The Bishkek-Osh road enters the valley through a tunnel under the Too-Ashu Pass and leaves the valley at the Alabel Pass.</p>	article_posters/imgonline-com-ua-Resize-kCw9z2MOgYwdI.jpg	https://nomadslife.travel/cuaranteed-tours/29	2023-10-18 11:46:59.170869+03	5	3
5	en	Burana Tower.	Burana Tower is a large minaret located in the Chui Valley in northern Kyrgyzstan. It is located near the town of Tokmok, about 70 km east of the capital Bishkek.	<p><strong>Burana Tower.</strong></p>\r\n\r\n<p>Burana Tower is a large minaret located in the Chui Valley in northern Kyrgyzstan. It is located near the town of Tokmok, about 70 km east of the capital Bishkek. The tower, together with grave markers, some earthworks and the remains of a fortress and three mausoleums, are the remains of the ancient city of Balasagun, founded by the Karahan dynasty at the end of the 9th century. Inside the tower there is an external staircase and a steep winding staircase leading to the top of the tower. The tower was originally 45 meters high. However, the tower has been severely damaged by numerous earthquakes over the centuries: The last major earthquake in the 15th century destroyed the upper half of the tower, bringing it to its present height of 25 meters.</p>	article_posters/imgonline-com-ua-Resize-xjIv0zUFlTMYs.jpg	https://nomadslife.travel/cuaranteed-tours/21	2023-10-18 11:52:34.424328+03	2	3
25	en	The Equestrian Hippodrome in Cholpon-Ata	The Equestrian Hippodrome in Cholpon-Ata.\r\nThe equestrian arena in Cholpon Ata is located 270 km from Bishkek and covers 25 hectares. It is the only lakeside arena in Central Asia.	<p><strong>The Equestrian Hippodrome<em>&nbsp;</em>in Cholpon-Ata</strong></p>\r\n\r\n<p>The equestrian arena in Cholpon Ata is located 270 km from Bishkek and covers 25 hectares. It is the only lakeside arena in Central Asia. The project is unique in that it is the first in Kyrgyzstan to be built in such a short time, is of national and international significance, and was built in accordance with all applicable norms and standards.</p>		https://nomadslife.travel/cuaranteed-tours/23	2023-10-18 12:45:50.873613+03	1	4
3	en	Chuy Region in Kyrgyzstan.	Chuy Region in Kyrgyzstan. Attractions Burana Tower (historical complex), mountain gorges: Ala-Archa, Kegety, Alamedin, Chun-Kurchak, Chon-Kemin, Shamsi, Issyk-Ata, Belogorke, Bishkek city, Chon-Kemin National Park, Komorchek pass, Susamyr valley its all in Chui Region which is located in the northernmost part of the Kyrgyz Republic.	<p>Chui Region in Kyrgyzstan</p>\r\n\r\n<p>Attractions Burana Tower (historical complex), mountain gorges: Ala-Archa, Kegety, Alamedin, Chun-Kurchak, Chon-Kemin, Shamsi, Issyk-Ata, Belogorke, Bishkek city, Chon-Kemin National Park, Komorchek pass, Susamyr valley its all in Chui Region which is located in the northernmost part of the Kyrgyz Republic. It borders Kazakhstan to the north and Issyk-Kul, Naryn, Jalal-Abad and Talas regions clockwise. Its administrative center is Bishkek.</p>	article_posters/imgonline-com-ua-Resize-Es1LoVCfpVUUdb.jpg	https://nomadslife.travel/cuaranteed-tours/25	2023-10-18 11:37:49.777029+03	6	3
2	en	Kyrgyzstan-country of nomads life	Kyrgyzstan-country of nomads life\r\nMore than 90% of Kyrgyzstan is mountainous.\r\nAbout two-thirds of Kyrgyzstan's population lives outside urban areas.\r\nThere are more glaciers in the mountains of Kyrgyzstan than in the Caucasus and the Alps combined.	<p><strong>Kyrgyzstan-country of nomads life</strong><br />\r\nDid you know?<br />\r\nMore than 90% of Kyrgyzstan is mountainous.<br />\r\nAbout two-thirds of Kyrgyzstan&#39;s population lives outside urban areas.<br />\r\nThere are more glaciers in the mountains of Kyrgyzstan than in the Caucasus and the Alps combined.<br />\r\nIssyk-Kul in Kyrgyzstan is the second largest alpine lake in the world.<br />\r\nThe world&#39;s largest walnut forest is in the Arslanbob region of Kyrgyzstan.<br />\r\nManas, the central poem of Kyrgyz history, is one of the longest epics in the world.</p>\r\n\r\n<p>A trip to Kyrgyzstan will transport you to the Swiss Alps of Central Asia, an amazingly gorgeous land left untouched by overcrowded cities and excessive tourism. The Kyrgyz people are adaptable and hardworking, the unspoiled nature is inspiring, and the opportunities for adventure are numerous and diverse. Autumn and summer times, in high mountains is possible to see people living the way of nomads life. Horse milking, horse riding and living in traditional Kyrgyz nomad yurts.<br />\r\nNomads follow in the footsteps of their ancestors to alpine meadows, and tourists can join them for a taste of the authentic wandering life. History is etched in to each of the fortresses, towers, and petroglyphs that dot the landscape, and they serve as silent reminders of the dramatic past of the land. Horses, donkey carts, worn-out buses, and sleek new cars ply the country roads, and friendly Kyrgyz people show case their unique culture through soulful songs, colorful felts, and traditional tapestries passed down through the ages.<br />\r\nIf your curiosity has been piqued, this Kyrgyzstan travel guide will help you get to know this small country and answer all your questions about Kyrgyz tourism.<br />\r\nIs Kyrgyzstan worth a visit?<br />\r\nKyrgyzstan is an enigma to many countries around the world, but for backpackers it is the number one destination in Central Asia, and over the past few years it has gradually attracted traveler so fall stripes. So what attracts travelers to this small nomad country?<br />\r\nKyrgyzstan is a stunning nomads country whose silhouette is defined by high mountain lakes, vast forests, lush pastures, rushing rivers and red rock canyons, not to mention the magnificent peaks of the majestic Tien Shan Mountains.<br />\r\nKyrgyzstan is a welcoming nomads life country, and its ultra-free visa rules accurately reflect the friendliness and laid-back nature of the people you&#39;ll meet on your journey. Kyrgyzstan has long been considered one of the most tourist-friendly and nomads life countries in Central Asia,and it has no intention of giving up that reputation any time soon.&nbsp;</p>\r\n\r\n<p>Kyrgyzstan is a land of adventure. Where else in a week can you live in a real yurt in a nomadic family, ride a horse through the mountains, raft through remote valleys and learn about ancient and Soviet history?</p>\r\n\r\n<p>Dream vacations<br />\r\nClimb on horseback to snowy peaks covered with glaciers, walk through the enchanting valley of the Canyon of Fairy Tales, swim, sun bathe and simultaneously enjoy the mountain view on Lake Issyk-Kul. Local history stretches across time and space-from the petroglyphs of Cholpon-Ata to the ruins of Tash-Rabat Castle and the giant statue of Lenin that greets you in Osh. Kyrgyz cuisine is no less varied, with new and delicious dishes offered in buffet style.</p>\r\n\r\n<p><br />\r\nThrough all the impressions runs the traditional nomadic culture of Kyrgyzstan, expressed in fun sports, colorful folk costumes ,exquisite craft sand long-standing traditions that have been formed for centuries in this beautiful and rugged land.<br />\r\nVisas Matters<br />\r\nOne of Kyrgyzstan&#39;s high lights is that it is the easiest country to visit in the region, as citizens of more than 50 countries can enter visa-free for 60 days, while12 countries, including Japan, can enter without restrictions. Most tourists who need a visa need only submit an electronic application, and very few nationals need the dreaded invitation letter.</p>\r\n\r\n<p>Is Kyrgyzstan safe for travelers?<br />\r\nA reputation un becoming of a hospitable country like Kyrgyzstan: As of mid-2020,Kyrgyzstan maintains a Level 1rating in the U.S. State Department&#39;s travel advisory system. Most Kyrgyz people can&#39;t wait for you to come back and be impressed by the country and culture of Kyrgyzstan.</p>\r\n\r\n<p>Safety precautions for traveling to Kyrgyzstan include being careful with valuables being cautious when traveling alone and at night, being aware of natural disasters such as altitude sickness and sudden changes in weather conditions, and voiding in advertently entering border areas near Tajikistan and Uzbekistan. Keep these guidelines in mind and be prepared to feel welcomed and valued by the people of Kyrgyzstan.</p>\r\n\r\n<p>Choose your transportation options<br />\r\nConvenient access to Kyrgyzstan via flights from Russia, Turkey, &nbsp;United Arab Emirates (UAE) and other countries saves energy for the local experience instead of searching for a route to Kyrgyzstan. In addition, there are 12 land border crossings into Kyrgyzstan from Kazakhstan, Tajikistan, Uzbekistan and China, most of which can be crossed on foot, by private car or motorcycle. In addition, our company can offer or organize you to rent cars, car with driver, buses &nbsp;and anything about the transportation.</p>\r\n\r\n<p>Domestic transportation uses buses, trains, minibuses and private cars, the latter of which can quickly replace taxis. The whole system may seem chaotic to the untrained eye, but in reality, it works very efficiently and often offers multiple options to reach a destination.</p>\r\n\r\n<p>Seasons in Kyrgyzstan<br />\r\nUnlike other parts of Central Asia, Kyrgyzstan is most beautiful and tourist-friendly in summer rather than spring. However Kyrgyzstan is full of natural splendor, so each season has its own unique charm:</p>\r\n\r\n<p>Winter: Ski and snowboard season, from mid-November to March, is when the number of travelers drops sharply, so most accommodation and tour operators offer discounted rates. The weather can be unstable and affect travel plans, so visit with a sense of adventure.</p>\r\n\r\n<p>Autumn: Autumn in Kyrgyzstan is less touristy, with homegrown produce in bazaars and arrange of excursions from horseback riding and rafting to city tours and historical tours.</p>\r\n\r\n<p>Spring: Frequent rainfall in the first weeks of Kyrgyzstan&#39;s shortest season, with flower fields and lush mountain scenery in May.</p>\r\n\r\n<p>Summer: With little rain, pleasant mountain temperatures and many festivals, summer is the ideal time for hiking, exploring the mountains, staying in yurt camps and relaxing near Lake Issyk Kul, Son kul, Ala kul and many other beautiful places. Feel nomad&rsquo;s life.<br />\r\nHow many days do you need in Kyrgyzstan?<br />\r\nThis is because Kyrgyzstan is full of outdoor opportunities and it is impossible to fit everything into a few days. In addition, the mountainous terrain and laid-back culture make it difficult to efficiently get from one destination to another. However, the following information may be useful when planning your Kyrgyzstan itinerary:</p>\r\n\r\n<p><strong>Bishkek </strong>- more than just a landing point, this capital city, with its wide boulevards and historically significant sites, offers a wide range of shopping, entertainment and dining options.<br />\r\nHow long is your stay? Two to three days if you want to take day trips to nearby attractions.<br />\r\nThe main attractions are Ala Too Square, Oak Park, Osh Market (bazar).<br />\r\nHow can I get off the tourist route? Day trip to Ala Archa Valley and Burana Tower in ancient Balasagun.<br />\r\n&nbsp;<br />\r\n<strong>Osh </strong>- the capital of southern Kyrgyzstan, strongly influenced by Uzbek culture.<br />\r\nDuration of stay: 1-2 days.<br />\r\nMain sights: Suleiman Tu mountain, Lenin statue (the largest in Central Asia), Navoi Park.<br />\r\nWays to get off the beaten track: Relax in Kyrgyzstan&#39;s Ata National Park or explore the historic town of Uzgen and its bazaar.<br />\r\n&nbsp;<br />\r\n<strong>Jalalabad</strong> - the former center of the Silk Road, with the second largest population after Bishkek and Osh.<br />\r\nDuration of stay: 1 day.<br />\r\nMain sights are Lenin Street, thermal springs of Jalalabad Sanatorium, Arslanbob walnut forests.<br />\r\nOff the beaten track: Book a homestay in the nearby village of Kara Sur or in Sary Chelek National Park.<br />\r\n&nbsp;<br />\r\n<strong>Karakol</strong> - a traditional town on the shores of Lake Issyk Kul, the fourth largest city in the country.<br />\r\nDuration of stay: 1-2 days.<br />\r\nMain attractions: Holy Trinity Orthodox Church, Dungan Mosque, Przewalski Memorial Museum.<br />\r\nWays to get off the beaten track: Dine with ethnic minority Uyghur and Dungan families or learn local baking with a homestay in nearby Jergalan.<br />\r\n&nbsp;<br />\r\n<strong>Cholpon Ata</strong> - a resort and historic town on Lake Issyk Kul.<br />\r\nDuration of stay: 2 days.<br />\r\nMain attractions Petroglyphs in Cholpon Ata, Ruh Ordo Cultural Center, Issyk Kul State Museum of History and Culture.<br />\r\nHow to get away from the crowds Stay overnight in a yurt camp in the mountains or go parasailing over Issyk Kul.<br />\r\n&nbsp;<br />\r\n<strong>Naryn </strong>- the capital of the most mountainous and traditional region of Kyrgyzstan.<br />\r\nDuration of stay. Two days to tour the surrounding area.<br />\r\nThe main attractions are Kosoy Korgon Fortress, Atbashi village, Naryn river cruise.<br />\r\nHow to get off the beaten track Head towards Torugart Pass and stop at Tash Rabat Caravanserai on the way.<br />\r\n&nbsp;<br />\r\n<strong>Kochkor</strong> - a small but pleasant mountain town, a convenient stopover for tourists passing through the region.<br />\r\nDuration of stay 1-1,5 days.<br />\r\nThe main attractions are Golden Kol handicrafts, Son Kol Lake, Koch Kor Regional Museum.<br />\r\nWays to get off the beaten track explore the Chon Salt Cave or spend the night in a yurt on Lake Kol Ukok.<br />\r\n&nbsp;<br />\r\n<strong>Talas</strong> - Kyrgyzstan&#39;s westernmost city, Talas borders Kazakhstan and is largely devoid of tourists.<br />\r\nDuration of stay: 1 day.<br />\r\nMain attractions: Manas Ordo, Kirov Reservoir, Tuyuk Tor rock sculptures.<br />\r\nOff the beaten track: Visit Besh-Tash National Park and the Herzen Museum in the nearby village of Ak Dobo.</p>\r\n\r\n<p><strong>Services</strong><br />\r\nKyrgyzstan is an extremely flexible country for tourists. It offers plenty of accommodation for everyone from individual backpackers to tourist groups and families with children, multiple options for domestic travel and space in mountain meadows. The company also caters to a wide range of needs, from individual travelers to groups and families with children.</p>\r\n\r\n<p><strong>NOMADS LIFE </strong>offers the following services</p>\r\n\r\n<p>Business travel services<br />\r\nPlanning a conference in Kyrgyzstan? We can arrange everything from transportation and hotels to equipment, interpreters, security and team building activities.<br />\r\nVisa support<br />\r\nIf you need a visa support letter, we will start the process of issuing one.<br />\r\nEasily plan your arrivals and departures with the latest flight schedules of the main airlines serving Kyrgyzstan.<br />\r\nBook transportation<br />\r\nTransportation reservation<br />\r\nArrange car rental or ground transportation from the airport or border to your next destination.<br />\r\nHotel reservations<br />\r\nBrowse and book hotels in various cities of Kyrgyzstan.<br />\r\nGroup tour arrangements<br />\r\nJoin a small group tour with fixed departure dates.<br />\r\nPersonalized planning<br />\r\nBook a private tour based on your preferred Kyrgyzstan travel style or contact us for more information.</p>\r\n\r\n<p>Holidays and festivals in Kyrgyzstan<br />\r\nKyrgyzstan&#39;s national holidays pay homage to the past and perpetuate beloved traditions through unique festivals. Whether it&#39;s a distant nomadic history or a hard-won victory over the last world conquerors, this country knows how to celebrate in style. Why not include these festivals in your Kyrgyzstan itinerary?</p>\r\n\r\n<p>Folk festivals, Kyrgyzstan travel nomadic games Kupkari, Kyrgyzstan travel folk festivals, Kyrgyzstan travel<br />\r\nNowruz (March 21) - the traditional New Year of Central Asia and the Persian world is celebrated with great enthusiasm in Kyrgyzstan. Songs, dances, games, traditional food and numerous outdoor activities welcome the arrival of spring.<br />\r\nThe best places for celebrations are Issyk Kul Lake or Bishkek. However, all cities and villages host special events.</p>\r\n\r\n<p>Victory Day (May 9) - Born in Soviet times, this day commemorates the victory over Nazi Germany with grand parades, speeches, concerts and ceremonies honoring WWII veterans.<br />\r\nBest places to celebrate in Bishkek</p>\r\n\r\n<p>Independence Day (August 31) - commemorates Kyrgyzstan&#39;s second victory in the 20th century with military march and presidential speech, as well as national sports, dance, ethnic food, fireworks and other joyful events.<br />\r\nBest places to celebrate in Bishkek</p>\r\n\r\n<p>National Horse Games Festival (July, dates vary) - Equestrian sports have long been at the center of Kyrgyzstan&#39;s nomadic way of life, but this unforgettable event is boundless with traditional horse races, live competitions, folk costumes, local cuisine and a display of Kyrgyz craft skills.<br />\r\nThe best place for celebrations is the village of Kizilooi on the shores of Lake Sonkul.</p>\r\n\r\n<p>Birds of Prey Festival (early August) - a fun-filled carnival featuring displays of Kyrgyz birds of prey. Various events include felt making, horse races, traditional dance performances and an introduction to yurt building.<br />\r\nThe best place to celebrate Lake Issyk-Kul</p>\r\n\r\n<p>Interested in Kyrgyz cuisine?<br />\r\nKyrgyzstan offers a range of classic Central Asian dishes such as freshly baked bread, savory samosa pastries, manty and chuchvara dumplings. If you want to try some of Kyrgyzstan&#39;s local cuisine, try the following</p>\r\n\r\n<p>Beshbarmak: a traditional nomadic dish made with homemade noodles, potatoes and beef or horse meat.<br />\r\nKuurdak - a one-dish meal of meat, potatoes, onions and spices.<br />\r\nAshlamfoo - Dungan cold soup with noodles, meat and vegetables.<br />\r\nBoorsok - fluffy fried dumplings that test your willpower<br />\r\nDried fish - dried fish salted at a nearby stall from the sea in Issyk Kulu.<br />\r\nOromo - delicate homemade noodle swirls stuffed with meat and potatoes.<br />\r\nDimlama - steamed beef and fresh vegetables.<br />\r\nKurut - sour and salty milk balls ranging from basil to hot pepper flavor.<br />\r\nMaksim and Bozo - Kyrgyzstan&#39;s distinctive grain-based sour drinks.</p>\r\n\r\n<p>Measures to be taken in Kyrgyzstan (Dos and Don&rsquo;ts in Kyrgyzstan)<br />\r\nKyrgyzstan is one of the countries in Central Asia where official laws are the most lax and residents are accepting of foreigners. While far from comprehensive, we hope this Kyrgyzstan travel advice will point you in the right direction as you prepare for your upcoming adventure:</p>\r\n\r\n<p>DO IT:<br />\r\nBe aware that mountain roads can be treacherous and impassable in winter, and even in summer, high-altitude yurt camps can be surprisingly cold.<br />\r\nDO: Leave plenty of time and flexibility in your itinerary, as weather, last-minute schedule changes and unplanned opportunities can arise.<br />\r\nPractice responsible tourism by investing money in home stays, small cafes, family-run souvenir shops and Kyrgyz tour programs that support local initiatives.<br />\r\nWhen staying in someone&#39;s home, be prepared to practice local customs such as taking off your shoes at the door, using the toilet and eating on the floor.<br />\r\nCome prepared to embrace new things - new experiences, first time sports, unusual food, etc. You won&#39;t regret it!<br />\r\nWhat not to do?<br />\r\nWait until the last minute to withdraw cash, as it can be difficult to find working ATMs after you leave Bishkek.<br />\r\nIf you hitchhike or are offered a homestay, do not thank the driver or host.<br />\r\nExpect most Kyrgyzstanis to speak English, especially in rural areas.(only in Bishkek and in some other city can speak English but still not everywhere)<br />\r\nThe rich culture in Kyrgyzstan&#39;s cities and small towns is as fascinating as nature itself.<br />\r\nUnless you are an experienced trekker, go into the mountains alone.<br />\r\nLanguage.<br />\r\nThe official languages of Kyrgyzstan are Kyrgyz and Russian, spoken mainly in rural areas and the capital. Kyrgyz is a Turkic language historically closely related to Kazakh, while Russian spread under Soviet rule in the 20th century.<br />\r\nPhrase&nbsp;&nbsp; &nbsp;Kyrgyz&nbsp;&nbsp; &nbsp;Russian<br />\r\nHello&nbsp;&nbsp; &nbsp;Informal: Салам (Salam)<br />\r\nFormal: Саламатсызбы (Salamatsyzby)&nbsp;&nbsp; &nbsp;Привет (Privyet)<br />\r\nHow are you?&nbsp;&nbsp; &nbsp;Kандайсыз? (Kandaysyz?)&nbsp;&nbsp; &nbsp;Как дела? (Kak dela?)<br />\r\nGood-Bye&nbsp;&nbsp; &nbsp;Көрүшкөнчө (Korushkoncho)&nbsp;&nbsp; &nbsp;До свидания (Do svidaniya)<br />\r\nThank You!&nbsp;&nbsp; &nbsp;Рахмат (Rahmat)&nbsp;&nbsp; &nbsp;Спасибо (Spasibo)<br />\r\nYes/No&nbsp;&nbsp; &nbsp;Oоба (Ooba)/Жок (Jok)&nbsp;&nbsp; &nbsp;Да/Нет (Da/Nyet)<br />\r\nWhere is the... (airport)?&nbsp;&nbsp; &nbsp;Аэропорт кайда (Aeroport kayda)&nbsp;&nbsp; &nbsp;Где... (аэропорт)? (Gde... (aeroport?))<br />\r\nHow much is it?&nbsp;&nbsp; &nbsp;Бул канча турат? (Bul kancha turat?)&nbsp;&nbsp; &nbsp;Сколько это стоит (Skol&rsquo;ko eto stoit?)<br />\r\nMy name is&hellip;&nbsp;&nbsp; &nbsp;Менин атым... (Menin atim...)&nbsp;&nbsp; &nbsp;Меня зовут... (Menya zovut...)<br />\r\nI don&rsquo;t understand&nbsp;&nbsp; &nbsp;Түшүнгөн жокмун (Tushungen jokmin)&nbsp;&nbsp; &nbsp;Я не понимаю (Ya ne ponimayu)<br />\r\nExcuse me&nbsp;&nbsp; &nbsp;Кечириңиз (Kechiringiz)&nbsp;&nbsp; &nbsp;Извините (Izvinite)<br />\r\nNice to meet you&nbsp;&nbsp; &nbsp;Таанышканыма кубанычтамын! (Taanyshkanyma kubanychtamyn!)&nbsp;&nbsp; &nbsp;Очень приятно познакомиться (Ochen priyatno poznakomit&#39;sya)</p>	article_posters/imgonline-com-ua-Resize-CIjd9OVflEUvN.jpg	https://nomadslife.travel/cuaranteed-tours/21	2023-10-18 11:30:38.850873+03	9	2
6	en	The Ala-Archa National Par	The Ala-Archa National Park is an alpine national park in the Tyan-Shan mountains of Kyrgyzstan, located approximately 35 km south of the capital city of Bishkek.	<p>The&nbsp;<strong>Ala-Archa National Park</strong>&nbsp;is an alpine national park in the <strong>Tyan-Shan</strong>&nbsp;mountains of <strong>Kyrgyzstan</strong>, located approximately 35 km south of the capital city of <strong>Bishkek.&nbsp;</strong>&nbsp;Established in 1976, it currently covers 16,485 hectares. Ala Archa National Park offers many attractions and places to visit. Free Korea Peak is a mountain in the Tien Shan Ala Too Range of Kyrgyzstan. It is located in Ala-Archa National Park in Kyrgyzstan. Corona Peak is a mountain in the Tien Shan Ala Too Range of Kyrgyzstan. It is located in Ala-Archa National Park in Kyrgyzstan. It is so named because of its crown-like appearance.</p>	article_posters/imgonline-com-ua-Resize-idfCK0HCovo.jpg	https://nomadslife.travel/cuaranteed-tours/14	2023-10-18 12:05:31.984678+03	2	3
7	en	The Kegety Gorge	The Kegety Gorge stretches for 30 km along the northern slope of the Kyrgyz Ala-Too, 75 km from the city of Bishkek. The rapid flow of the river located here flows through the gorge with many tributaries.	<p><strong>The Kegety Gorge</strong></p>\r\n\r\n<p>The Kegety Gorge stretches for 30 km along the northern slope of the Kyrgyz Ala-Too, 75 km from the city of Bishkek. The rapid flow of the river located here flows through the gorge with many tributaries.The gorge is rich in vegetation. Tall grass meadows give way to thickets of small shrubs of barberry, rowan and rosehip, followed by a spruce forest standing right on the mountain slopes. Often travelers come here not only to breathe fresh mountain air, but also to collect medicinal herbs and berries, which makes any trip exciting and unforgettable.</p>	article_posters/imgonline-com-ua-Resize-KQWEQg7QAkz0r.jpg	https://nomadslife.travel/cuaranteed-tours/11	2023-10-18 12:20:33.658853+03	2	3
9	en	Chunkurchak gorge	Chunkurchak is the highest mountain gorge closest to Bishkek, which is popular among Bishkek residents and guests of the capital.	<p><strong>Chunkurchak gorge</strong><br />\r\nChunkurchak is the highest mountain gorge closest to Bishkek, which is popular among Bishkek residents and guests of the capital. It is located near Bishkek and stretches for almost 30 kilometers.The Chunkurchak gorge is located at an altitude of 2400 meters above sea level. From Kyrgyz &ldquo;chunkurchak&rdquo; is translated as &ldquo;depression&rdquo;.<br />\r\nChunkurchak is considered one of the most beautiful gorges in Kyrgyzstan. Here you can observe a colorful symbiosis of snowy mountain peaks, green alpine meadows, coniferous forests and reddish soil. At the entrance to Chunkurchak, stunning panoramas open up, which are the hallmark of the Chui Valley.</p>	article_posters/imgonline-com-ua-Resize-USlZIUGZrB.jpg	https://nomadslife.travel/cuaranteed-tours/29	2023-10-18 12:30:23.961191+03	2	3
22	en	The Petroglyph Museum in Cholpon Ata:	A treasure trove of ancient art of the Turkic peoples. At the Cholpon Ata Petroglyph Museum, visitors can see hunting scenes, animal fights, hunters, symbolic lines and geometric shapes (circles and rectangles).	<p><strong>The Petroglyph Museum in Cholpon Ata:</strong></p>\r\n\r\n<p>A treasure trove of ancient art of the Turkic peoples. At the Cholpon Ata Petroglyph Museum, visitors can see hunting scenes, animal fights, hunters, symbolic lines and geometric shapes (circles and rectangles). These drawings reflect the way of life of the people of that time and show people&#39;s interest in creativity, as well as reveal many unknown facts about their way of life and religious beliefs. These artifacts are an important source of information about the culture and life of ancient people and the history of the region and are an example of world heritage.</p>		https://nomadslife.travel/cuaranteed-tours/21	2023-10-18 12:44:14.794763+03	1	4
8	en	Issyk-Kul lake	Issyk-Kul is a closed lake in Kyrgyzstan. It is one of the 30 largest lakes in the world in terms of area and the seventh deepest in the world. It is located in the north-east of the republic, between the ridges of Mount Beiten: its height is 1608 meters.	<p><strong>Issyk-Kul</strong> is a closed lake in Kyrgyzstan. It is one of the 30 largest lakes in the world in terms of area and the seventh deepest in the world. It is located in the&nbsp;north-east&nbsp;of the republic, between the ridges of Mount&nbsp;Beiten: its height is 1608 meters.</p>	article_posters/imgonline-com-ua-Resize-3v4OByYbgqI8qzYG_ZgX2KTi.jpg	https://nomadslife.travel/cuaranteed-tours/20	2023-10-18 12:27:09.736813+03	10	4
36	en	Besh Tash Lake (Besh Tash nature reserve)	Besh Tash Lake is one of the most beautiful lakes in the north of Kyrgyzstan, located in the Talas region. Besh Tash Lake is the largest lake in the Besh Tash Nature Reserve.	<p><strong>Besh Tash Lake (Besh Tash nature reserve)</strong><br />\r\nBesh Tash Lake is one of the most beautiful lakes in the north of Kyrgyzstan, located in the Talas region. Besh Tash Lake is the largest lake in the Besh Tash Nature Reserve. The lake is located in the beautiful Besh Tash gorge with alpine meadows and spectacular views.The lake is 28 meters deep and 3000 meters high. The water of the lake is a gorgeous turquoise blue, which contrasts beautifully with the surrounding snowy peaks and green meadows. The best time to visit the lake is in April or May when the lake thaws. There is a small, unnamed lake slightly below Lake Five Stone.&nbsp;<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/18	2023-10-18 12:58:34.519305+03	5	8
10	en	Karakol city.	Karakol is the fourth largest city in Kyrgyzstan and the administrative center of Issyk-Kul region. It is located near the eastern end of Lake Issyk-Kul, at an altitude of 1690-1850 m, about 150 km from the Kyrgyz-Chinese border and 380 km from the capital Bishkek.	<p><strong>Karakol&nbsp;city.</strong></p>\r\n\r\n<p>Karakol&nbsp;is the fourth largest city in Kyrgyzstan and the administrative center of Issyk-Kul region. It is located near the eastern end of Lake Issyk-Kul, at an altitude of 1690-1850 m, about 150 km from the Kyrgyz-Chinese border and 380 km from the capital Bishkek.&nbsp;Karakol&nbsp;is known&nbsp;as one of the best mountain trekking regions in Central Asia, but it is also a great place to discover Kyrgyz culture and hospitality before, during and after an adventure tour.</p>	article_posters/imgonline-com-ua-Resize-CvRGN2QKfsNv_Iq01jbo.jpg	https://nomadslife.travel/cuaranteed-tours/28	2023-10-18 12:31:10.148073+03	1	4
11	en	Chong kemin Valley	Located in the Chong kemin Valley, this national park is a unique natural complex with a variety of flora and fauna and many beautiful landscapes, from semi-deserts to glaciers. The natural park covers an area of 500 hectares and gradually increases in altitude from 1400 meters to 2800 meters.	<p><strong>Chong kemin Valley</strong></p>\r\n\r\n<p>Located in the Chong kemin Valley, this national park is a unique natural complex with a variety of flora and fauna and many beautiful landscapes, from semi-deserts to glaciers. The natural park covers an area of 500 hectares and gradually increases in altitude from 1400 meters to 2800 meters. The valley&#39;s diverse wildlife includes six plant species and 21 animal species listed in the Red Book, including snow leopard, deer and golden eagle. Coniferous and mixed forests grow in Chon-kemin National Park. Although not far from the capital, the valley has managed to preserve its natural landscape, unspoiled beauty and the charm of wildlife trails and unpopular footpaths. The green slopes of forested mountains, the floods carrying cool water from the valley, the fresh, clean air, the pleasant summer breeze blowing over travelers - you can be part of it, composing songs and legends.</p>	article_posters/imgonline-com-ua-Resize-B4xNcAnbEUqWjT.jpg	https://nomadslife.travel/cuaranteed-tours/27	2023-10-18 12:32:44.198424+03	1	3
13	en	Issyk-Ata gorge	An excellent holiday destination with the family. In the Issyk-Ata gorge there is a waterfall within walking distance of 2-3 km. This place is also famous for its thermal springs, there are excellent pools where you can swim all year round.	<p>Issyk-Ata gorge</p>\r\n\r\n<p>An excellent holiday destination with the family. In the Issyk-Ata gorge there is a waterfall within walking distance of 2-3 km. This place is also famous for its thermal springs, there are excellent pools where you can swim all year round. If you came for nature and springs, then this is what you need, A good place for recreation, camping, etc. It attracts with its landscapes and clean air. Pleasant to the eye at any time of the year)</p>	article_posters/imgonline-com-ua-Resize-jPX0rZBCM5of.jpg	https://nomadslife.travel/cuaranteed-tours/28	2023-10-18 12:34:24.091236+03	1	3
14	en	Konorchek Canyon	Konorchek Canyon\r\nThe canyon is made of red rock and is similar to the fairytale canyon (Skazka Canyon) south of Issyk Kul. Konorchek Canyon is located about 140 km (86 miles) east of Kyrgyzstan's main highway towards Issyk Kul.	<p><strong>Konorchek Canyon</strong></p>\r\n\r\n<p>The canyon is made of red rock and is similar to the fairytale canyon (Skazka Canyon) south of Issyk Kul. Konorchek Canyon is located about 140 km (86 miles) east of Kyrgyzstan&#39;s main highway towards Issyk Kul. Located inside the Boom Canyon, hiking around Konorchek is quite easy.</p>	article_posters/imgonline-com-ua-Resize-GQcfQxWUQTy5D0.jpg	https://nomadslife.travel/cuaranteed-tours/24	2023-10-18 12:35:57.566791+03	1	3
16	en	Shamsi Gorge	Shamsi Gorge is one of the most beautiful gorges in Kyrgyzstan. It is located 120 km from Bishkek. Unlike other similar areas, the slopes of Shamsi Gorge are very steep and rock formations can be seen in places. The Shamsi River flows through the gorge.	<p><strong>Shamsi Gorge</strong> is one of the most beautiful gorges in Kyrgyzstan. It is located 120 km from Bishkek. Unlike other similar areas, the slopes of Shamsi Gorge are very steep and rock formations can be seen in places. The Shamsi River flows through the gorge. Despite the shallow depth of the water, the river flows very fast and wild. The flora and fauna in the gorge is very diverse. Wild animals such as wild boar, marten, Turkestan lynx, rabbit and weasel can be seen here. Thanks to its numerous green meadows, the Shamsi Gorge is a grazing area for animals. Flocks of sheep and herds of horses graze here.</p>	article_posters/imgonline-com-ua-Resize-VZsByS8EOHdb0.jpg	https://nomadslife.travel/categories/25	2023-10-18 12:38:47.468092+03	1	3
23	en	Cultural center "Ruh Ordo	Named after the cultural center "Ruh Ordo", Ch. Aitmatov is a complex located on the northern shore of Lake Issyk Kul in Cholpon Ata. The complex includes a memorial hall, a sculpture dedicated to Aitmatov's work, a museum, an exhibition hall with nomadic folk symbols, a photo gallery, a portrait hall and a concert hall	<p><strong>Cultural center &quot;Ruh Ordo</strong></p>\r\n\r\n<p>Named after the cultural center &quot;Ruh Ordo&quot;, Ch. Aitmatov is a complex located on the northern shore of Lake Issyk Kul in Cholpon Ata. The complex includes a memorial hall, a sculpture dedicated to Aitmatov&#39;s work, a museum, an exhibition hall with nomadic folk symbols, a photo gallery, a portrait hall and a concert hall. There are also monuments to thinkers, philosophers, politicians and public figures. Five religious buildings representing the four major religions of the world have been built on the site: Christianity (represented by two chapels, one Orthodox and one Catholic), Islam, Buddhism and Judaism.</p>		https://nomadslife.travel/cuaranteed-tours/27	2023-10-18 12:45:00.501039+03	1	4
19	en	Belogorsk Gorge	Located above the village of Sokuluk, the Belogorsk Gorge is notable for its unusual topography, including the remains of a large landslide and a 60-meter waterfall, the highest waterfall in northern Kyrgyzstan, known as the Belogorsk Waterfall	<p><strong>Belogorsk Gorge</strong></p>\r\n\r\n<p>Located above the village of Sokuluk, the Belogorsk Gorge is notable for its unusual topography, including the remains of a large landslide and a 60-meter waterfall, the highest waterfall in northern Kyrgyzstan, known as the Belogorsk Waterfall. The gorge differs significantly from other gorges in the northern Tien Shan, with high rock formations and numerous springs and streams seeping down its slopes. At the end of the canyon road there is an impressive panorama of waterfalls falling from great heights, almost vertically steep rocks and the spectacular Black Spire Peak, notable for its unusual shape. Belogorsky Waterfall is one of the highest waterfalls in Tien Shan and the highest waterfall in northern Kyrgyzstan. Water gushes from a height of 60 meters and flows down wildly and forcefully. The spray from the waterfall can be felt 200 meters away, and standing near the waterfall is cooling even on the hottest days. The huge column of water formed by the waterfall can be seen 10-12 km away from the falls.</p>\r\n\r\n<p style="margin-left:48px">The distance from the end of the road to the waterfall is only 3 km, so people of all levels can reach the waterfall. Besides the waterfall, it is also possible to climb up to the upper parts of the gorge, where the remains of the great mudflow can be seen in person.</p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>	article_posters/imgonline-com-ua-Resize-vYIGObqktN3.jpg	https://nomadslife.travel/cuaranteed-tours/24	2023-10-18 12:41:09.189079+03	1	3
18	en	Karakol Gorge (resort Karakol)	Karakol Gorge is a mountain pass located on the southern shore of Issyk-Kul, in the eastern part of the Tersky Ala-too mountain range near the city of Karakol. The gorge is one of the most visited places in the Issyk-Kul region due to its unique natural features, length and relative accessibility. The gorge is a protected area and its total length is 40 km.	<p><strong>Karakol Gorge (resort Karakol)</strong></p>\r\n\r\n<p>Karakol Gorge is a mountain pass located on the southern shore of Issyk-Kul, in the eastern part of the Tersky Ala-too mountain range near the city of Karakol. The gorge is one of the most visited places in the Issyk-Kul region due to its unique natural features, length and relative accessibility. The gorge is a protected area and its total length is 40 km.</p>\r\n\r\n<p>Karakol Gorge is a center for many mountain tourists due to the presence of trekking routes in the Tersky Ala Tu range. In summer, climbers set off from their base camps to Karakol and Zigit, the two highest peaks of Tersky Ala-Tou in Przewalski, Telman, Gastello, Zhukov, Dimitrov and Tersky Ala-Tou. Passing through the Karakol Gorge, one can reach the beautiful Ala Kulu Lake, the Golden Alashan Gorge and the Jeti Oguz Gorge. The modern ski resort of Karakol is located 7 km from the city of Karakol, Kyrgyzstan.</p>\r\n\r\n<p>In Soviet times it was used to train the national Olympic team. Today, &#39;Karakol&#39; is an ideal place not only for training athletes, but also for active recreation. &#39;Caracol&#39; ski resort is unique in its natural conditions. The main base is located at an altitude of 2300 meters, on the slopes of the Tien Shan, in a majestic coniferous forest.</p>	article_posters/imgonline-com-ua-Resize-g6CnVfkLpZes2acR.jpg	https://nomadslife.travel/cuaranteed-tours/18	2023-10-18 12:40:45.749247+03	1	4
20	en	Prjevalskiy museum.	Pier - Przewalsk is a place of historical significance in the immediate vicinity of the city of Karakol. It is home to the tomb of the world-renowned scientist, traveler and explorer Nikolai Mikhailovich Przewalski, as well as a museum dedicated to his explorations in Central Asia.	<p><strong>Prjevalskiy museum.</strong></p>\r\n\r\n<p>Pier - Przewalsk is a place of historical significance in the immediate vicinity of the city of Karakol. It is home to the tomb of the world-renowned scientist, traveler and explorer Nikolai Mikhailovich Przewalski, as well as a museum dedicated to his explorations in Central Asia.</p>\r\n\r\n<p>Nikolai Mikhailovich Przhevalsky (1839-1888) was a Russian traveler who explored Asia. He was one of the first Europeans to visit the remote regions of Mongolia, China and Tibet. He discovered the source of the Yellow and Yangtze rivers, crossed the Gobi and Taklamakan deserts, described the now non-existent Lake Lobnor and the Tarim River, and discovered the Przewalski horse, an unknown breed of horse that now bears his name. It is difficult to overestimate the importance of his travels in the world of science: Przewalski&#39;s writings have been translated into many foreign languages and his travelogues are still published today.</p>\r\n\r\n<p>Contrary to popular belief, the location of Przewalski&#39;s grave in Kyrgyzstan has nothing to do with his research. As mentioned earlier, Przewalski&#39;s main interest was in remote Tibet and its former capital Lhasa.</p>	article_posters/imgonline-com-ua-Resize-szeNjigFphBxRLKw_HFyUEyu.jpg	https://nomadslife.travel/cuaranteed-tours/28	2023-10-18 12:41:40.126923+03	1	4
21	en	Cholpon-Ata city	Cholpon-Ata city is located in the center of the northern shore of Issyk-Kul, 208 km east of the capital Bishkek (265 km by road).	<p><strong>Cholpon-Ata city</strong></p>\r\n\r\n<p>It is located in the center of the northern shore of Issyk-Kul, 208 km east of the capital Bishkek (265 km by road). It is the administrative center of Issyk-Kul region and a resort town. Population: 12,568.</p>	article_posters/imgonline-com-ua-Compressed-0X7umDklyqH8nD.jpg	https://nomadslife.travel/cuaranteed-tours/14	2023-10-18 12:43:22.855219+03	1	4
26	en	Altyn-Arashan Gorge	The beautiful Golden Arashan Gorge is located in the valley of the Arashan River, 10 km east of the city of Karakol. One slope of the Golden Arashan gorge is covered with dense spruce forests, while the other slope is covered with a diverse carpet of wild plants, flowers, fruits and shrubs. Wildlife in the valley includes mountain goats, deer, bears, wild boar and marmots.	<p><strong>Altyn-Arashan Gorge</strong></p>\r\n\r\n<p>The beautiful Golden Arashan Gorge is located in the valley of the Arashan River, 10 km east of the city of Karakol. One slope of the Golden Arashan gorge is covered with dense spruce forests, while the other slope is covered with a diverse carpet of wild plants, flowers, fruits and shrubs. Wildlife in the valley includes mountain goats, deer, bears, wild boar and marmots. The most famous place in the valley and the most visited by tourists are the radon springs. A walk of a few hours will take you to the moraine glacial lake Kashka Su and the majestic Sharkiratma (waterfall), Tash Tektir and Kuldulek waterfalls. Altyn-Arashan (Golden Arashan) is a valley and mountain resort in the northeast of Kyrgyzstan, near Karakol and Issyk-Kul. It is located along the trekking route from Teplokrichenka. The spa complex is located in a mountain valley south of Paratka Peak at an altitude of 5020 meters.</p>\r\n\r\n<p>Altyn-Arashan hot&nbsp; Spring is located in the upper reaches of the Arashan River valley. The valley extends beyond the village of Aksu. The left slope is densely covered with spruce forest. Alashan Gorge is very beautiful. It is a wide valley at an altitude of 2600 meters with spruce forests, green meadows and fragrant flowers.</p>		https://nomadslife.travel/cuaranteed-tours/29	2023-10-18 12:47:09.855365+03	1	4
27	en	Lake Ala-Kol	Lake Ala-Kol It is located at an altitude of 3532 meters, upstream of the Kurgaktor River, the right tributary of the Karacol. The glacier visible from the lake shore has retreated, covering the upper part of the valley and continues to flow into the lake.	<p><strong>Lake Ala-Kol</strong></p>\r\n\r\n<p>Lake Ala-Kol It is located at an altitude of 3532 meters, upstream of the Kurgaktor River, the right tributary of the Karacol. The glacier visible from the lake shore has retreated, covering the upper part of the valley and continues to flow into the lake. The depth of the lake is more than 70 meters. Tianshan Mountains Kingdom. Hike to Ala Kulu mountain lake. There is no island.</p>\r\n\r\n<p>The high-altitude glacial lake Ala-Kul (Alakul, Ala-Kol), located in the Issyk-Kul region, is considered the pearl of the Terskey-Ala-Too mountain range. Ala-Kul is an excellent opportunity to visit the Karakol gorge and climb to an altitude above 3000 meters. The closest city to the lake is Karakol</p>		https://nomadslife.travel/cuaranteed-tours/22	2023-10-18 12:48:13.546126+03	1	4
29	en	Jeti Oguz Gorge	Jeti Oguz Gorge (Jety Oguz, Jeti Oguz, etc.) is one of the most popular tourist attractions in the Issyk-Kul region. It is located 30 km from the city of Karakol and attracts a large number of local and foreign tourists.	<p><strong>Jeti Oguz Gorge</strong></p>\r\n\r\n<p>Jeti Oguz Gorge (Jety Oguz, Jeti Oguz, etc.) is one of the most popular tourist attractions in the Issyk-Kul region. It is located 30 km from the city of Karakol and attracts a large number of local and foreign tourists.</p>\r\n\r\n<p>The Kyrgyz word Jeti Oguz translates as &#39;seven bulls&#39;. The name comes from the reddish rock mass, which is the main feature of the valley. Unusually for the Tien Shan Mountains, the rocks are very brightly colored.</p>\r\n\r\n<p>Jeti Oguz is also famous as a resort town with radon and hydrogen sulphide springs. The resort is located at an altitude of 2200 meters. The hot springs of the resort are used for the treatment of neurological, musculoskeletal and skin diseases.</p>\r\n\r\n<p>The gorge stretches for about 40 km and there are many interesting places in this vast area. A popular tourist attraction is the Jeti Oguz waterfall. The most famous of these is the Devichy Kosa waterfall, so named because of the strange water patterns running down the cliffs.</p>		https://nomadslife.travel/cuaranteed-tours/19	2023-10-18 12:49:28.912067+03	1	4
24	en	Bishkek	Bishkek is the capital of Kyrgyzstan, located at the foot of the Tien Shan mountains in Central Asia.\r\n\r\nWhere to visit in Bishkek:\r\n\r\nState Museum of Fine Arts\r\n\r\nThe museum is worth visiting for its collection of Kyrgyz embroidery and felt carpets, a wide variety of painting sand national and international touring exhibitions. Last admission at 17.30.	<p><strong>Bishkek</strong></p>\r\n\r\n<p>Bishkek is the capital of Kyrgyzstan, located at the foot of the Tien Shan mountains in Central Asia.</p>\r\n\r\n<p>Where to visit in Bishkek:</p>\r\n\r\n<p><strong>State Museum of Fine Arts</strong></p>\r\n\r\n<p>The museum is worth visiting for its collection of Kyrgyz embroidery and felt carpets, a wide variety of painting sand national and international touring exhibitions. Last admission at 17.30.</p>\r\n\r\n<p><strong>Ala-Too Square.</strong></p>\r\n\r\n<p>The center of Bishkek, overlooked by the triumphal statue of Manas the Mighty, is architecturally neo-brutalist but photogenic. In summer, the concrete of the northern half of the square is softened by attractive flower displays and a fountain that doubles as a pool for local children.</p>\r\n\r\n<p><strong>Osh Bazaar</strong></p>\r\n\r\n<p>Bishkek&#39;s most central bazaar has a certain obsessive interest and is an important landmark of the city. Traditional Kyrgyz clothing, such as white imitation felt ak kalpak hats and colorful shepherd&#39;s chests, are available from stalls outside the Kiyal building at the southern end of the bazaar. It is deserted on Mondays but busy on other days. In osh bazaar people sell all kind of people needs like food, clothing, mobile phones, souvenir shops and etc</p>\r\n\r\n<p><strong>Dubovi Park.</strong></p>\r\n\r\n<p>The lush, wide Erkindyk Street (Freedom Street) leads into this pleasant central park, where artists sell a variety of local-themed paintings. There is a small open-air sculpture garden in the oak grove behind the statue of Kurmanjan Datka. The park was officially renamed after the local writer Chingiz Aitmatov, but no one calls it anything other than Oak Park.</p>\r\n\r\n<p><strong>Dordoy Bazaar.</strong></p>\r\n\r\n<p>Built mostly from repurposed ships, this bazaar has a flavor reminiscent of modern Silk Road trade, albeit a little smaller since Kyrgyzstan joined the Eurasian Customs Union.in this bazaar most the of selling things (except vegetables) a lot cheaper than any bazaar in Bishkek.</p>\r\n\r\n<p><strong>Panfilov Park</strong></p>\r\n\r\n<p>Filled with amusement parks and carnival rides, this city center park is particularly pleasant and overflowing with local families on summer weekends. Children&#39;s attractions, a lot kind of trees you can see in Panfilov Park.</p>\r\n\r\n<p><strong>Frunze House Museum.</strong></p>\r\n\r\n<p>This modest museum consists of a concrete shell around a thatch-roofed hut believed to be the birthplace of Mikhail Vasilievich Frunze (1885-1925), whose Bishkek (Pishpek) was renamed &#39;Frunze&#39; shortly after his death. Little information is available in English, but even without captions, most of the photographs depicting both Bishkek and the Bolshevik revolution (interpreted through Frunze&#39;s role) will be of interest to visitors.</p>\r\n\r\n<p><strong>Victory Monument Square</strong></p>\r\n\r\n<p>Commemorating the 40th anniversary of the end of the Second World War, this memorial is designed to resemble three iconic yacht propellers curling above the eternal flame. It is located on the vast grounds of Victory Square.</p>\r\n\r\n<p><strong>White House.</strong></p>\r\n\r\n<p>The sidewalk in front of this modern Stalinist building, Kyrgyzstan&#39;s seat of government, is also the scene of regular protests by local citizens representing various causes.</p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>	article_posters/imgonline-com-ua-Compressed-Tv6g8YOP7VaPVF_QqBaHUq.jpg	https://nomadslife.travel/cuaranteed-tours/28	2023-10-18 12:45:45.41175+03	2	3
37	en	Bes-Tash Nature Reserve	Besh-Tash Nature Reserve is a large nature park located in the Talas mountain range. It is located south of Talas city and includes the Bes-Tash, Korba, Kumush-Tas and Urmalal valleys.	<p><strong>Bes-Tash Nature Reserve</strong><br />\r\nBesh-Tash Nature Reserve is a large nature park located in the Talas mountain range. It is located south of Talas city and includes the Bes-Tash, Korba, Kumush-Tas and Urmalal valleys. The altitude of the protected area ranges from 1100 m to 3500 m. Besh-Tash means &#39;five stones&#39; in Kyrgyz. This special name was given because of the five stones standing in the Besh Tash gorge, where there is an interesting legend that they turned into stones as a result of the cruelty of five bandits.The reserve was created to preserve the natural diversity of the Talas region. The slopes of the reserve&#39;s gorges are densely covered with arche forests and are largely intact. In addition to the arc, the reserve is home to Tian-Shan spruce and fir. There are eight lakes in the reserve, the largest of which is Five Stone Lake in the same gorge.This is an ideal place for trekking and hiking. It takes more than a day to see all the beauty of the nature reserve, but it is worth it.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/18	2023-10-18 12:59:19.646689+03	1	8
31	en	Batken Region	Batken Region is the most remote region of Kyrgyzstan, located at the foot of the mighty Turkestan Mountains. Tourists rarely visit this region, but there is something to see!\r\n\r\nVisit Kyrgyzstan in spring to see AYGUL flowers. Blooming of the rare AYGUL flower. When is Spring has arrived in Kyrgyzstan and soon endemic flowers will delight you with their bright colors.	<p><strong>Batken Region</strong></p>\r\n\r\n<p>Batken Region is the most remote region of Kyrgyzstan, located at the foot of the mighty Turkestan Mountains. Tourists rarely visit this region, but there is something to see!</p>\r\n\r\n<p>Visit Kyrgyzstan in spring to see AYGUL flowers. Blooming of the rare AYGUL flower. When is Spring has arrived in Kyrgyzstan and soon endemic flowers will delight you with their bright colors. One of the rarest flowers found in Kyrgyzstan is Aygul, which blooms in the Batken region.This bright orange flower grows in Kyrgyzstan and Turkestan Mountains. The name of the flower translates as sunflower. Scientific name: Edward&#39;s hazel grouse; when this flower begins to bloom, locals organize a flower festival. Aygul is listed in the Red Book and must not be plucked. This flower is unique in that it grows in the shade of the mountains. The stems are about 1 meter high. Each year, one bud is produced on each stem. Locals say they have encountered an Aygul with 30 buds!</p>\r\n\r\n<p>&nbsp;Batken region is a wonderful region. It is the most remote corner of Kyrgyzstan and may seem unremarkable at first glance, but this impression is deceptive. First of all, the Batken region is a trekking enthusiast&#39;s dream. The vast Turkistan mountain range hides many interesting things in its depths. During a one-day hike, one can see the stunning Karafsin and Leylek valleys, the turquoise-colored Ai Kol Lake and the Pyramidal Peak, often called the Patagonia of Asia. In the mountains of the Batken region, you will feel an incredible Asian space where you will not meet a single person for kilometers. It is also home to the aigle flower, a flower that grows nowhere else in the world.Batken is also an interesting place for history and culture buffs. The ruins of the mighty Kokand fortress are preserved here, as is Khan&#39;s fortress. Batken is famous for its caves, among them the Kan-i-Gut caves, which extend six kilometers into the mountains and have been the most important source of silver in the Fergana Valley for thousands of years. This is a great place to easily pioneer something new.</p>	article_posters/imgonline-com-ua-Resize-7iAUg0DiL2AOZdV.jpg	https://nomadslife.travel/cuaranteed-tours/29	2023-10-18 12:52:11.283921+03	2	7
32	en	Talas region	The Talas region is ideal for a relaxing trip in the complete absence of tourists. The vast Talas valley is surrounded on all sides by mountains and valleys and features	<p><strong>Talas region</strong><br />\r\nThe Talas region is ideal for a relaxing trip in the complete absence of tourists. The vast Talas valley is surrounded on all sides by mountains and valleys and features spectacular landscapes, deep mountain lakes and a wide variety of alpine vegetation. It is of great interest for experienced travelers who cover long distances on a daily basis. It is equally interesting for those who want to relax and enjoy nature.Besides the mountains, the Talas region also has cultural attractions. It is a historical region of remote Kyrgyz settlement. A large historical complex, the Manas Ordo, commemorates the national hero Manas (Manas). It is also home to the largest Hun burial mound in Central Asia. The Kirov Reservoir, built during the Soviet era, is a unique example of the architectural monumentality of the period.</p>		http://localhost:3000/cuaranteed-tours/23	2023-10-18 12:55:11.19471+03	1	8
33	en	Fairytale  Canyon	Skazka Canyon is a small canyon on the southern coast of Issyk-Kul, famous for its red clay rocks. The canyon is located near the village of Tosor, about 120 km from Fisher.	<p><strong>Fairytale&nbsp; Canyon</strong></p>\r\n\r\n<p>Skazka Canyon is a small canyon on the southern coast of Issyk-Kul, famous for its red clay rocks. The canyon is located near the village of Tosor, about 120 km from Fisher.</p>\r\n\r\n<p>Fairytale Canyon is a very popular place for tourists. This is due to the canyon&#39;s accessibility and stunning scenery. Over thousands of years, soil erosion has created the beautiful contrasts of the Fairytale Canyon. The canyon offers a variety of strange forms made of stone and clay. Made of colorful clays, minerals and rocks, these shapes add to the natural beauty of the area.</p>\r\n\r\n<p>Some of the natural sculptures in the canyon have names. The best known is the &#39;Chinese Wall&#39;, reminiscent of famous Chinese structures. It should be added that the gorge can be visited at any time of the year as there is almost no snow in winter. The gorge is very close to the road and the lakeshore, making it an ideal place to relax or have a picnic.</p>		https://nomadslife.travel/cuaranteed-tours/26	2023-10-18 12:55:50.534829+03	1	4
34	en	Kirov Reservoir	The Kirov Reservoir is a large reservoir located in the western part of the Talas region, famous for its dam with Lenin's monument.	<p><strong>Kirov Reservoir</strong><br />\r\nThe Kirov Reservoir is a large reservoir located in the western part of the Talas region, famous for its dam with Lenin&#39;s monument. This is an outstanding monument of Soviet monumentalism.<br />\r\nThe epic tells of the Kyrgyz hero Manas, who led the Kyrgyz people back from Altai to Tien Shan and later protected them from Chinese raids. As the epic is historical, a significant part of the The construction of the reservoir began in 1965 and lasted 10 years in the Chon-Kapka gorge. Previously, the village of Kirovskoye was located on the site of the reservoir, but it was moved to the neighboring territory. The Kirov reservoir was created to irrigate fertile lands in the Talas valley. The maximum depth of the reservoir is 7 meters. The reservoir covers an area of 20 km&sup2;. The dam, as well as the blue water of the reservoir, is of great interest to tourists. This is because a bust of Lenin is carved into the side of the dam. According to some sources, this is one of the largest statues of its kind in the world. On some days it is possible to observe the water coming out of the dam. In winter, most of the water in the dam is drained and most of the remaining water freezes. In winter, the ruins of the old Kirovskoye houses can be seen.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/25	2023-10-18 12:56:25.615329+03	1	8
35	en	Manas-Ordo Historical Complex	Manas-Ordo is a cultural and historical complex that embodies the story of Manas, the famous epic hero of Kyrgyzstan.	<p><strong>Manas-Ordo Historical Complex</strong><br />\r\nManas-Ordo is a cultural and historical complex that embodies the story of Manas, the famous epic hero of Kyrgyzstan. According to legend, his tomb is located here. Manas-Ordo is located 15 km east of Talas city. According to legend, Manas&#39; headquarters was in the Talas valley.A little about Manas and what he meant to the Kyrgyz people. Manas is the hero of the world&#39;s greatest epic, surpassing the famous Indian Mahabharata and Homer&#39;s Iliad. The Manas Ordo complex was created to preserve the memory of these important events in Kyrgyz culture. The main attraction of the complex is Manas Gumbez, his tomb. In fact, Gumbez is not Manas&#39; tomb. The Gumbez building is a mausoleum from the Late Karakhanid period, built five centuries before the events depicted in the epic. It is probably the resting place of the daughter of the Karakhanid Khan. The mausoleum is covered with sculptural mosaics made of clay and its dome has a conical shape unusual for buildings in Central Asia.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/21	2023-10-18 12:57:37.642855+03	1	8
38	en	Jayloo in Talas	For generations, the Kyrgyz have lived nomadically and traveled across the mountains with herds of cattle. Seasonal pastures were divided into winter (kyshtoo), spring (jayloo), summer (jailoo) and autumn (kyshtoo).	<p><strong>Jayloo in Talas</strong><br />\r\nFor generations, the Kyrgyz have lived nomadically and traveled across the mountains with herds of cattle. Seasonal pastures were divided into winter (kyshtoo), spring (jayloo), summer (jailoo) and autumn (kyshtoo). Winter pastures were located in sheltered valleys, while spring and autumn pastures were slightly further away from winter pastures, but still close. Summer pastures were located in high steppes and wide gorges with dense vegetation and abundant water.<br />\r\nToday, most Kyrgyz people are sedentary, but some are semi-nomadic. Winters are usually spent in villages (sometimes called kishlaks (village), the generic term for the countryside today). In summer, shepherds take their flocks (usually sheep, cattle, horses and goats) to Jailu. Yurts are the most common dwellings and are scattered across the vast green meadows of the mountains. Some of the most famous jayloo are located around Sonkul in Naryn and in the Suusamir valley on the road between Osh and Bishkek. In Talas region.These places are known for their pure nature and delicious dairy products (including kumis, fermented mare&#39;s milk). Many tourists travel to Jayloo to stay in traditional Kyrgyz yurts, explore the region on horseback and experience a bit of the traditional nomadic lifestyle.</p>		http://localhost:3000/cuaranteed-tours/15	2023-10-18 13:00:15.618043+03	1	8
39	en	Jergalan	Also Jylgalan is a spectacular mountain valley in the eastern part of the Issyk-Kul region, 60 km northeast of the city of Karakol, near the border with Kazakhstan.	<p><strong>Jergalan</strong></p>\r\n\r\n<p>Also Jylgalan is a spectacular mountain valley in the eastern part of the Issyk-Kul region, 60 km northeast of the city of Karakol, near the border with Kazakhstan.</p>\r\n\r\n<p>It is an unusual valley in this part of the Tien Shan Mountains, with many steep slopes and thorny peaks. Jergalan is popular with tourists all year round. In summer there is the Kaimies Therapeutic Resort and Recreation Center. In winter, freeride skiing, snowboarding and ski touring enthusiasts flock here. The valley is covered in snow from November to March. As there are no ski slopes or cable cars in the valley, many people use off-road vehicles to transport extreme mountain sports enthusiasts to the slopes. Particularly stubborn people climb the mountains themselves.</p>\r\n\r\n<p>The valley slopes are covered with dense forests of Tian-shan fir trees. In summer the valley is covered with a carpet of flowers and at the beginning of the season a large number of mushrooms can be collected under the fir trees.</p>		https://nomadslife.travel/cuaranteed-tours/24	2023-10-18 13:02:46.072335+03	1	4
40	en	Osh Region	The Osh region is the heartbeat of southern Kyrgyzstan. It is where the oriental Uzbek culture of the Fergana Valley and the nomadic Kyrgyz culture of the highlands	<p><strong>Osh Region</strong><br />\r\nThe Osh region is the heartbeat of southern Kyrgyzstan. It is where the oriental Uzbek culture of the Fergana Valley and the nomadic Kyrgyz culture of the highlands merge: Osh and Uzgen, the oldest cities with over 3000 years of history, are located next to the ancient high mountains of the Pamirs and the Tian shan, creating a wonderful mix of landscape and culture. Osh region shows tourists the wonderful ancient culture of southern Kyrgyzstan. Osh region shows tourists the ancient and wonderful culture of southern Kyrgyzstan. These places have always been at the crossroads of the Great Silk Road trade routes from east to west. Here visitors can see authentic oriental bazaars and medieval architecture of the Islamic East. The city of Osh is the capital of the region and has been a religious center since ancient times. The main attraction of the city is Sulayman Too, named after the legendary king and prophet Solomon.<br />\r\nAnother feature of the Osh region is the Tien Shan and Pamir Plateau, the two largest mountain ranges in Central Asia. There are numerous valleys and mountain ravines here, whose pristine nature attracts tourists from all over the world. In these places you can see everything from complex tourist routes for trekking and cycling to high peaks for mountaineering and climbing. The caves and healing springs of the Osh region are widely known. The vast Alai valley shows the nomadic lifestyle of the Kyrgyz people, unchanged for centuries. Lenin Peak, one of the highest peaks of Kyrgyzstan and the Pamirs, is also located here. In short, Osh has a wide range of attractions for tourists.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/20	2023-10-18 13:03:47.483265+03	1	6
41	en	Salt Lake	Also Dead Lake, Tuz-Köl and Kara-Köl  is a small lake on the southern shore of Lake Issyk-Kul, known for the high salt content in the water and the healing mud on the shores and bottom of the lake. Due to its extremely high salinity, it can be compared to the Dead Sea in Israel and the Great Salt Lake in the US, but on a smaller scale.	<p><strong>Salt Lake</strong></p>\r\n\r\n<p>Also Dead Lake, Tuz-K&ouml;l and Kara-K&ouml;l&nbsp; is a small lake on the southern shore of Lake Issyk-Kul, known for the high salt content in the water and the healing mud on the shores and bottom of the lake. Due to its extremely high salinity, it can be compared to the Dead Sea in Israel and the Great Salt Lake in the US, but on a smaller scale. For example, one can relax in the water without any effort. Note that getting water in the eyes can be uncomfortable. The shores of the lake are covered with clay of various colors and sharp salt crystals that form when the water dries. The lake is very small with a shore length of 1.5 km and a depth of 11 meters. Although it is very small, it does not freeze in winter due to its high salinity.</p>\r\n\r\n<p>The lake is very close to the shoreline of Issyk-Kul, about 400 meters. The area around the lake is very beautiful with dried dunes of red and white sand, a large bay and a panorama of the Terskey Ala To mountain range.</p>		https://nomadslife.travel/cuaranteed-tours/25	2023-10-18 13:03:51.351397+03	1	4
30	en	Grigoriev Gorge	Grigoriev Gorge is a long and beautiful gorge located on the northern shore of Issyk-Kul, near the village of Grigorievka. The gorge is famous for its forested slopes and three lakes.	<p><strong>Grigoriev Gorge</strong></p>\r\n\r\n<p>Grigoriev Gorge is a long and beautiful gorge located on the northern shore of Issyk-Kul, near the village of Grigorievka. The gorge is famous for its forested slopes and three lakes.</p>\r\n\r\n<p>Grigoriev Gorge is very popular among tourists, as is the neighboring Semenov Gorge due to its easy access and beauty. The gorge is located on the Kyungey Ala-To ridge and has a very interesting topography. Narrow areas suddenly turn into wide valleys and vice versa. A wild river flows through the gorge and forms three small lakes in the swampy area. The slopes of the Grigorievsky Gorge are unusually forested, and the woodland starts at the bottom.</p>\r\n\r\n<p>The gorge is one of the most visited tourist attractions in Issyk-Kul. In summer, visitors can stay in one of the many yurts in the area. There are also many tourist routes through the Kek Bel Pass to the neighboring Semenov Gorge, the Kyungei Ala Tou Range to the west and the Zailiisky Ala-too Range.</p>	article_posters/imgonline-com-ua-Resize-FrY1Dbp155zEbwgG.jpg	https://nomadslife.travel/cuaranteed-tours/28	2023-10-18 12:51:00.44676+03	1	4
42	en	Osh city	Kyrgyz nomadic culture and the settled agricultural culture of the Fergana Valley.\r\nThe historical significance of Osh is centered on Mount Sulayman Too, where this ancient city is located.	<p><strong>Osh city</strong><br />\r\nKyrgyz nomadic culture and the settled agricultural culture of the Fergana Valley.<br />\r\nThe historical significance of Osh is centered on Mount Sulayman Too, where this ancient city is located. According to legend, the legendary prophet King Solomon prayed at the top of this mountain. The mosque at the summit of Suleiman Too was built by the great Mughal, founder of the Great Mongol Empire. At the foot of the mountain are many historical buildings, including a medieval mosque and mausoleum, and in a cave on the mountain is a unique historical museum built during the Soviet era. Sulaiman Too is the most important Muslim holy site in Central Asia.<br />\r\nAs Osh was an important part of the great Silk Road for centuries, another great aspect of the city is the famous Osh Bazaar, which has existed for over 2000 years and is located on both banks of the Ak Bura River. Trade has been thriving here for a long time and the unique spirit of the Eastern bazaar can be seen, which is still considered the most authentic bazaar in Central Asia. Osh also has a museum dedicated to the city and the Great Silk Road, in which it played an important role.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/20	2023-10-18 13:04:30.247073+03	1	6
43	en	Lake Teshik Kul	Teshik-kul is a remote mountain lake located at an altitude of 3,500 meters on the southern side of the Terskey Ala-too mountain range in Issyk-Kul region.	<p><strong>Lake Teshik Kul</strong></p>\r\n\r\n<p>Teshik-kul is a remote mountain lake located at an altitude of 3,500 meters on the southern side of the Terskey Ala-too mountain range in Issyk-Kul region.</p>\r\n\r\n<p>Teşik Kul is a typical mountain lake, divided into two parts of different heights and connected by a waterfall. The water of the lake is milky white and opaque.</p>\r\n\r\n<p>The area around the lake is very beautiful. On the eastern side of the lake there is a spectacular view of mountain glaciers that do not melt even in summer. To the west, there are small mountain plains flowing at the foot of the glaciers that supply water to the lake. The lake has an underground drainage outlet, so the river flowing from the lake flows out of the soil just below the lake. There is no direct drainage outlet.</p>\r\n\r\n<p>The lake is in a remote location. The route to the lake starts in the Gilu Suu River valley adjacent to the hot spring of the same name, just before climbing Tong Pass from the south. The hiking route to the lake is not difficult and is 5 km long with slight elevation changes.</p>		https://nomadslife.travel/cuaranteed-tours/20	2023-10-18 13:04:40.864153+03	1	4
44	en	Arabel Valley	Arabel Plateau is a plateau valley located at an altitude of 3800 meters. It is a wonderful place in the southern part of the Issyk-Kul region. It is located near the Barskoon Gorge and the gold mine Kumtor.	<p><strong>Arabel Valley</strong></p>\r\n\r\n<p>Arabel Plateau is a plateau valley located at an altitude of 3800 meters. It is a wonderful place in the southern part of the Issyk-Kul region. It is located near the Barskoon Gorge and the gold mine Kumtor.</p>\r\n\r\n<p>Alpine valleys (also called silts) are a rare and quite remarkable phenomenon, especially at this altitude. The average annual temperature here is only 5-7&deg;C and the land is almost devoid of vegetation. Only grasses, mosses and lichens survive in such places. Due to abundant rainfall and melting glaciers, there is plenty of water in the valley. This water is used to create rivers, lakes and marshes. The Arabel Plateau is a unique alpine tundra area with more than 50 lakes.</p>\r\n\r\n<p>The valley has such interesting landforms and numerous lakes due to very old glaciers. The glaciers flattened the valley and left many lake basins.</p>\r\n\r\n<p>The Arabel valley has many tourist routes. The valley can be reached via the Barskoon and Dzuk valleys and the Arabel Pass, which leads to the Borgert River valley.</p>		https://nomadslife.travel/cuaranteed-tours/15	2023-10-18 13:05:30.670309+03	1	4
45	en	Sulayman Too	Sulayman Too (Suleiman Mountain) is the most important cultural landmark of Kyrgyzstan and the first mountain on the UNESCO cultural heritage list of Kyrgyzstan, located in the center of Osh city.	<p><strong>Sulayman Too</strong><br />\r\nSulayman Too (Suleiman Mountain) is the most important cultural landmark of Kyrgyzstan and the first mountain on the UNESCO cultural heritage list of Kyrgyzstan, located in the center of Osh city. The 1 km long mountain has five peaks, the highest of which is 150 meters above the city center. Due to its geological features, the mountain is full of caves and cavities, which are rare in Kyrgyzstan. In the early days of civilization in Central Asia, this relatively small mountain had a cult significance for people. The first traces of worship around the mountain date back to the deepest antiquity, to the X-XII centuries BC, more than 3000 years ago. To this day, many petroglyphs on the mountain remind of this. It is therefore not surprising that the oldest city in Central Asia, Osh, was built around this mountain.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/24	2023-10-18 13:05:33.751842+03	1	6
46	en	Semenov Gorge	Semenov Gorge (also called Chon aksuu) is one of the most famous straits on the northern shore of Lake Issyk-Kul. It is located on the Kyungey Ala-Too ridge and is 30 km long. Behind the gorge is a small lake, called the Holy Lake for its purity and clarity. The upper part of the gorge merges with the Grigoryev Gorge.	<p><strong>Semenov Gorge</strong></p>\r\n\r\n<p>Semenov Gorge (also called Chon aksuu) is one of the most famous straits on the northern shore of Lake Issyk-Kul. It is located on the Kyungey Ala-Too ridge and is 30 km long. Behind the gorge is a small lake, called the Holy Lake for its purity and clarity. The upper part of the gorge merges with the Grigoryev Gorge.</p>\r\n\r\n<p>The pass was named after the famous traveler Semenov Tian Shansky, who explored the region in the mid-19th century. The area is popular with tourists as there are few easily accessible and beautiful gorges on the northern shore of Lake Issyk-Kul. At the beginning of the gorge there is a dense spruce forest. In addition to fir trees, there are barberry, horse chestnut, dog-tooth violet and currant bushes in the canyon.</p>\r\n\r\n<p>The gorge has a well-developed tourist infrastructure. Here you can stay in yurts, taste Kyrgyz folk dishes cooked on stilts, drink koumiss and experience the nomadic culture of the country; from late July to late September, a yurt camp is organized, where you can experience yurt cultivation and enjoy nomadic life in pristine nature. Semenov Gorge is also home to the Semenov Forest.</p>\r\n\r\n<p>A number of tourist routes pass through the Semenov Gorge. Most of them are for day hikes, but there are also complex routes to the Chong Kemin Gorge and the Zailiisky Ala-too ridge.</p>		https://nomadslife.travel/cuaranteed-tours/18	2023-10-18 13:06:11.004572+03	1	4
54	en	Kulung Lake	Kulung Lake is a large mountain lake located deep in the Fergana Mountains, east of Osh. It is part of the Kulung Ata National Reserve. Kulung lake is a landslide lake formed by strong earthquakes.	<p><strong>Kulung Lake</strong><br />\r\nKulung Lake is a large mountain lake located deep in the Fergana Mountains, east of Osh. It is part of the Kulung Ata National Reserve. Kulung lake is a landslide lake formed by strong earthquakes. The total area of the lake is 3 km&sup2;. The altitude of the lake is quite high at 2,800 meters. Below Lake Krung is Little Lake Krung, which is filled with water from the main lake.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/11	2023-10-18 13:10:32.022625+03	1	6
47	en	Chychkan Gorge	Chychkan Gorge is a mountain pass located 40 km south of Osh city. Chychkan Gorge is one of the most popular tourist attractions in Osh region. Chychkan gorge is 2,400 meters above sea level and is the first pass of the famous Pamir Highway starting from Osh.	<p><strong>Chychkan Gorge</strong><br />\r\nChychkan Gorge is a mountain pass located 40 km south of Osh city. Chychkan Gorge is one of the most popular tourist attractions in Osh region. Chychkan gorge is 2,400 meters above sea level and is the first pass of the famous Pamir Highway starting from Osh. It is therefore an important part of Osh&#39;s tourism infrastructure. In summer, there are many cafes serving kymyz and various Kyrgyz national dishes. Residents of Osh and neighboring villages spend their picnics and holidays here. In winter, there is a small ski base where skiing and tubing (car balloons from large trucks) are practiced. The base is equipped with a cable car. The nature here is also very beautiful. In summer, all the surrounding mountains are covered with a carpet of bright green grass and flowers. The bright red rocks in this area are also spectacular and create a wonderful color contrast with the green grass and snow-capped peaks of the Pamir Plateau.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/24	2023-10-18 13:06:14.745909+03	1	6
12	en	Chinese-style wooden mosque	The Dungan Mosque is one of the most interesting attractions of Karakol, along with the Church of the Holy Trinity.The Dungun Mosque is associated with the large Dungun diaspora in Karakol and has a history of over 100 years.	<p><strong>Chinese-style wooden mosque</strong></p>\r\n\r\n<p>The&nbsp;Dungan&nbsp;Mosque is one of the most interesting attractions of&nbsp;Karakol, along with the Church of the Holy&nbsp;Trinity.The&nbsp;Dungun Mosque is associated with the large Dungun diaspora in&nbsp;Karakol&nbsp;and has a history of over 100 years. In 1877, a civil war broke out in China between Muslims and adherents of traditional Chinese religion. Chinese Muslims&nbsp;were subjected&nbsp;to all kinds of repression and more than 300,000 were forced to flee across the&nbsp;Tianshan&nbsp;Mountains to Kyrgyzstan, where many of them settled, including in&nbsp;Karakol. These Chinese Muslims&nbsp;were known&nbsp;as&nbsp;Dungans&nbsp;and remain so today.&nbsp;A brightly painted Chinese-style wooden mosque built in 1910 without the use of a single nail.</p>	article_posters/imgonline-com-ua-Resize-UhlrneHK8IPHn6f_pYAfLJQ.jpg	https://nomadslife.travel/cuaranteed-tours/28	2023-10-18 12:34:04.197675+03	1	4
48	en	Taldyk Pass	The Taldyk Pass is a high pass separating the Fergana valley from Chon Alai. The pass is located in Osh region, 160 km south of Osh city.	<p><strong>Taldyk Pass</strong><br />\r\nThe Taldyk Pass is a high pass separating the Fergana valley from Chon Alai. The pass is located in Osh region, 160 km south of Osh city.<br />\r\nTaldik Pass is one of the most popular passes in Kyrgyzstan. The pass is 3,600 m above sea level and serves as a kind of gateway to the Pamir Highway, one of the highest and most beautiful roads in the world.<br />\r\nThe northern slopes of the gorge are famous for steep serpentine rock formations from which a magnificent view of the Fergana valley opens up. The first road through this pass was opened at the end of the 19th century and became an important turning point in the most interesting colonial struggle between the Russian Empire and Britain for control of Central Asia, known as the &#39;Big Game&#39;.An unusual feature of Taldyk is that it is open all year round, despite its high altitude. On the roadside of the pass is a monument to the memory of Yuri Franzevich Grushko, an engineer involved in the design and construction of the road through the pass.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/14	2023-10-18 13:07:02.592328+03	1	6
15	en	The Church of the Holy Trinity	The Church of the Holy Trinity is a temple of the Russian Orthodox Kyrgyz Diocese of Bishkek in Karakol, Kyrgyzstan. A replica of the Tikhvin icon of the Mother of God is located in the church. The Holy Trinity Orthodox Church is one of the main attractions in Karakol. The church was built in the 19th century by the Russian community of Karakol.	<p><strong>The Church of the Holy Trinity</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Church of the Holy Trinity is a temple of the Russian Orthodox Kyrgyz Diocese of Bishkek in&nbsp;Karakol, Kyrgyzstan. A replica of the&nbsp;Tikhvin&nbsp;icon of the Mother of God is located in the church.&nbsp;The Holy Trinity Orthodox Church is one of the main attractions in&nbsp;Karakol. The&nbsp;church was built in the 19th century by the Russian community of&nbsp;Karakol.&nbsp;</p>\r\n\r\n<p>The history of the church dates back to 1869, when the city of&nbsp;Karakol&nbsp;was founded&nbsp;and the first Russian settlers built a small church on this site. However, this church&nbsp;was destroyed&nbsp;in an earthquake in 1876. The construction of a new church began in 1895 by architects from the city of&nbsp;Verny&nbsp;(Alma Ata). The roof of the church&nbsp;is covered&nbsp;with five domes and the walls are made of wooden logs, decorated with sculptures and various paintings.</p>	article_posters/imgonline-com-ua-Resize-CvRGN2QKfsNv_T8gfvxx.jpg	https://nomadslife.travel/cuaranteed-tours/14	2023-10-18 12:38:16.23385+03	1	4
49	en	Barskoon Gorge	The Barskoon Gorge is one of the most beautiful gorges on the southern shore of Lake Issyk-Kul, famous for its high waterfalls and dense spruce forests. The gorge was famously visited by Yuri Gagarin, the first man to fly into space.	<p><strong>Barskoon Gorge</strong></p>\r\n\r\n<p>The Barskoon Gorge is one of the most beautiful gorges on the southern shore of Lake Issyk-Kul, famous for its high waterfalls and dense spruce forests. The gorge was famously visited by Yuri Gagarin, the first man to fly into space.</p>\r\n\r\n<p>The Barskaun Gorge is about 30 km long. It runs deep into the Tersky Ala- Too mountains, reaching the plateau (Shilta) Arabel, which is separated from the gorge by a stepped gorge. The height of the gorges in the Barskoon Gorge is very high, reaching 4,000 meters. Barskoon, both for its natural beauty and the Barskoon waterfalls: Tears of the Leopard, the Manas Bowl, Sparkling Champagne and the Bearded White Beard. Among the cultural attractions of the valley, the camp of Tagay Bii (also known as Muhammad Kyrgyz) is important. He was one of the founders of Kyrgyzstan. Another famous monument is the statue of Yuri Gagarin. Contrary to popular belief, cosmonauts only passed by these places and did not visit them regularly. The Barskaun Gorge is located near the village of Tamga on the southern shore of Issyk-Kul, about 140 km from the Bishkek-Karakol road. The gorge has a good quality dirt road leading to Arabel.</p>		https://nomadslife.travel/cuaranteed-tours/17	2023-10-18 13:07:26.175688+03	1	4
50	en	Uzgen	Uzgen is a city in the Osh region of Kyrgyzstan, one of the oldest cities of the Fergana Valley, part of the Great Silk Road, and the former capital of the Karakhanid state.	<p><strong>Uzgen</strong><br />\r\nUzgen is a city in the Osh region of Kyrgyzstan, one of the oldest cities of the Fergana Valley, part of the Great Silk Road, and the former capital of the Karakhanid state.<br />\r\nUzgen is interesting first of all in terms of its history. The first settlements were established in present-day Uzgen in the 1st and 2nd centuries BC. Uzgen is located in the eastern part of the Fergana Valley, on the banks of the Kara Darya River. This favorable location made the city a very important trade and cultural center in ancient times. For a long time the city was the most important center of trade between China and Central Asia. In the 12th century AD, the city became the capital of the Karakhanid Kaganat. During this period, three Uzgen mausoleums and the Minaret of Uzgen were built, which are the main attractions of Uzgen.<br />\r\nIt is traditionally inhabited by Uzbeks. A distinctive feature of Uzgen is the former Uzbek settlement called Makhalya, located in the lower part of the city. While similar in appearance, it is worth noting that the neighborhood is not a rural settlement, but an urban settlement in Central Asia. The upper part of Uzgen refers to the Soviet era.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/14	2023-10-18 13:07:41.699073+03	1	6
17	en	The Church of the Holy Trinity	The Church of the Holy Trinity is a temple of the Russian Orthodox Kyrgyz Diocese of Bishkek in Karakol, Kyrgyzstan. A replica of the Tikhvin icon of the Mother of God is located in the church. The Holy Trinity Orthodox Church is one of the main attractions in Karakol. The church was built in the 19th century by the Russian community of Karakol.	<p><strong>The Church of the Holy Trinity</strong></p>\r\n\r\n<p>The Church of the Holy Trinity is a temple of the Russian Orthodox Kyrgyz Diocese of Bishkek in&nbsp;Karakol, Kyrgyzstan. A replica of the&nbsp;Tikhvin&nbsp;icon of the Mother of God is located in the church.&nbsp;The Holy Trinity Orthodox Church is one of the main attractions in&nbsp;Karakol. The&nbsp;church was built in the 19th century by the Russian community of&nbsp;Karakol.&nbsp;</p>\r\n\r\n<p>The history of the church dates back to 1869, when the city of&nbsp;Karakol&nbsp;was founded&nbsp;and the first Russian settlers built a small church on this site. However, this church&nbsp;was destroyed&nbsp;in an earthquake in 1876. The construction of a new church began in 1895 by architects from the city of&nbsp;Verny&nbsp;(Alma Ata). The roof of the church&nbsp;is covered&nbsp;with five domes and the walls are made of wooden logs, decorated with sculptures and various paintings.</p>	article_posters/imgonline-com-ua-Resize-OFXFRgH9Rm.jpg	https://nomadslife.travel/cuaranteed-tours/14	2023-10-18 12:39:17.389127+03	1	4
51	en	Tosor Gorge	Tosor Gorge is a mountain pass located on the Tersky AlaToo ridge, on the southern shore of Issyk-Kul near the village of Tosor. The gorge is mainly known for the Kirchi Narin valley and the pass (3900 meters) leading to the Naryn region.	<p><strong>Tosor Gorge</strong></p>\r\n\r\n<p>Tosor Gorge is a mountain pass located on the Tersky AlaToo ridge, on the southern shore of Issyk-Kul near the village of Tosor. The gorge is mainly known for the Kirchi Narin valley and the pass (3900 meters) leading to the Naryn region. Through this pass it is possible to reach Giru Suu hot springs and Teshik Kul lake. This pass is the only high pass with a highway on the southern shore of Lake Issyk-Kul. The gorge is popular with off-road drivers and cyclists.</p>\r\n\r\n<p>The undulations of the canyon are very interesting, with the beginning of the canyon narrowing abruptly and the road coming very close to the river in some places. This part of Tothol is lush with Japanese knotweed and other green vegetation. This picturesque landscape continues for about 5 km after the gorge passes through a rock gate into a wide mountain valley. From here there are three roads. The road on the right takes you along a beautiful mountain road to the village of Bokonbayevo, where you pass the village of Kadjy-Say and a small ravine. The road on the left is very short and leads to the local forest area. The road continues straight towards the pass. At an altitude of about 3000 meters there is another turn leading to the neighboring Tamga Gorge. There are many tourist routes in the Tosor Valley. It is an ideal place for day hikes and picnics.</p>		https://nomadslife.travel/cuaranteed-tours/14	2023-10-18 13:08:07.946872+03	1	4
52	en	Tulpar kul Lake	Lake Tulpar Kul is a highland lake located in the Osh region of Kyrgyzstan, near the base camp of Lenin Peak. It is a small lake with high transparency and is located in the Zaalaisky Mountains at an altitude of 3,500 meters.	<p><strong>Tulpar kul Lake&nbsp;</strong><br />\r\nLake Tulpar Kul is a highland lake located in the Osh region of Kyrgyzstan, near the base camp of Lenin Peak. It is a small lake with high transparency and is located in the Zaalaisky Mountains at an altitude of 3,500 meters. Tulpar Kul is a favorite destination for tourists and climbers visiting the Arai valley. On clear days, the panorama of Lenin Peak, one of the highest peaks of the Pamir Alai Range, is reflected on the surface of the lake. For this reason, the lake is very popular with photographers. The lake is a great contrast to the surrounding landscape. The soil and hills around the lake are made of red earth. Together with the surrounding green grass and the white crown of the Zaalaisky mountain peaks, a wonderful combination of colors is formed. Tulpar Kul is within walking distance from Achik Tash, the base camp of Lenin Peak. The lake can also be reached on horseback from the nearest villages of Sari Mogol and Kashka Suu.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/19	2023-10-18 13:08:42.347159+03	1	6
53	en	Alai Valley	At the southernmost tip of Kyrgyzstan, 120 km from the city of Osh, lies a vast gorge known as Chon Alai or Alai Gorge. It is one of the largest mountain valleys in Kyrgyzstan.	<p>Alai Valley<br />\r\nAt the southernmost tip of Kyrgyzstan, 120 km from the city of Osh, lies a vast gorge known as Chon Alai or Alai Gorge. It is one of the largest mountain valleys in Kyrgyzstan. The Pamir Highway passes through the Alai gorge. Two large ridges, the Alai Range and the Zaalaisky Range, form the valley. The average altitude of the valley is 3000 meters. The mountain range is 25 km wide at its widest point and 8-10 km wide at its narrowest point. In prehistoric times there was a huge glacier here, traces of which can be seen even today. The Alai Valley is a truly spectacular place, world famous for its stunning scenery and visited by thousands of tourists every year. The main attraction for tourists is Lenin Peak, the second largest peak in Kyrgyzstan, which can be seen from almost anywhere in the valley. The road to the base camp of the summit passes through the Alai valley. In addition to the summit, the valley is also known for the famous Pamir Road (one of the highest mountain roads in the world, connecting Osh in Kyrgyzstan and Khorog in Tajikistan). It was also part of the Great Silk Road that ran through the Alai Valley. Today Alai is still the center of nomadic life. Yurts and livestock are scattered along the mountain slopes. In the Alai Valley, visitors can learn about the Kyrgyz way of life and nomadic culture, which has remained unchanged over the centuries.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/19	2023-10-18 13:09:25.03829+03	1	6
55	en	Jalal-Abad Region	The Jalal-Abad region is probably the most culturally and geographically diverse region of Kyrgyzstan. Here, the cultures of the northern and southern parts of the country merge, and the natural resources are so diverse and at the same time remarkable that it is possible to see them all in less than two weeks	<p><strong>Jalal-Abad Region</strong><br />\r\nThe Jalal-Abad region is probably the most culturally and geographically diverse region of Kyrgyzstan. Here, the cultures of the northern and southern parts of the country merge, and the natural resources are so diverse and at the same time remarkable that it is possible to see them all in less than two weeks. The Jalal Abad region is attractive to tourists because of its diversity. The stunning nature of the region is markedly different from the rest of the Tian-shan Mountains. The Tian-shan Mountains border the Fergana Valley, an ancient center of civilization. The favorable climate on the border between the mountains and the vast valley has created Arslanbob, the largest walnut forest in the world. The mountain lakes of Jalal Abad are relatively low in altitude, the shores are densely covered with conifers and the water is clear enough to see the bottom. The eastern part of the region is home to one of the world&#39;s largest collections of petroglyphs, the Saimalu Stone. In the western part of the region is the medieval Shah Fazil Mausoleum, immortalizing the magnificent history of the Fergana Valley.There is plenty to see and do for trekking, horseback riding, cycling enthusiasts and those who want to get to know the amazing culture and unique features of Central Asia.</p>		https://nomadslife.travel/cuaranteed-tours/29	2023-10-18 13:10:59.409907+03	1	9
57	en	Lenin Peak	Lenin Peak is the second highest peak in Kyrgyzstan and is located in the Zaalaisky Mountains of Osh Region. Lenin Peak is one of the most popular peaks in Kyrgyzstan.	<p><strong>Lenin Peak</strong><br />\r\nLenin Peak is the second highest peak in Kyrgyzstan and is located in the Zaalaisky Mountains of Osh Region. Lenin Peak is one of the most popular peaks in Kyrgyzstan. Many people climb this peak every year as it offers a unique opportunity to visit high altitudes without the need for serious mountaineering skills. Lenin Peak is located on the Zaalaisky ridge in the northern part of the Pamir Mountains. Its height is 7134 meters. The relative height is 2790 meters. Due to its high altitude, the summit rises above the Alai valley.<br />\r\nThe peak was first described by the Russian traveler AP Fedchenko, who visited the Alai Valley in 1871. The first ascent to the summit took place in 1928; until 1933 Lenin Peak was considered the highest peak in the Soviet Union. Lenin Peak is very popular with avid climbers as it is one of the easiest &#39;7000 meter&#39; climbs in the world. However, not only climbers but also ordinary tourists come to see the stunning panorama of the Pamir Mountains and one of the highest peaks in Central Asia. At the foot of the peak at an altitude of 3,600 m there is a large base camp called Achyk Tash. The camp has all the necessary tourist facilities as it receives thousands of visitors every year.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/20	2023-10-18 13:12:50.5051+03	1	6
56	en	Naryn region	The Naryn region is ideal for long trips, including trekking, cycling and car trips. The large area and small population of the region can provide many impressions for tourists. The region is famous for its large lakes at an altitude of more than 3000 meters and beautiful and complex mountain gorges connecting the valleys and gorges of Naryn Region.	<p><strong>Naryn region</strong></p>\r\n\r\n<p>The Naryn region is ideal for long trips, including trekking, cycling and car trips. The large area and small population of the region can provide many impressions for tourists. The region is famous for its large lakes at an altitude of more than 3000 meters and beautiful and complex mountain gorges connecting the valleys and gorges of Naryn Region.The Naryn region is a great place to get an insight into the nomadic life of the Kyrgyz people, which has not changed much in the last 300 years. If you are interested in cultural monuments, it is worth visiting Tash Rabat, one of the oldest Silk Road caravan huts in Central Asia. Naryn region is the largest and paradoxically the least populated region of Kyrgyzstan. It is a region of vast landscapes and high mountains, where the nomadic lifestyle of the Kyrgyz people has been preserved to this day. The Naryn Region is the largest alpine region in the country. It includes the Kokshaal- Too Range, the largest in the Tien Shan, the At Bashi Range, the Moldo-Too Range, the Naryn-Too Range and the Susamyr Too Range. The average altitude is 3000-4000 meters. The ridge is broken by wide mountain valleys, the most famous of which are the Aksai, Alpa and Kochkor valleys. The southern part of Naryn Region is the coldest region in Kyrgyzstan. As a result, the aforementioned Aksai valley recorded a Kyrgyz temperature record of -53&deg;C. The mountain lakes of Son-kul, Kelsu and Chatyr-lkul and the largest river in the Tien Shan, the Naryn, are very popular.</p>\r\n\r\n<p>Historically, the region has always been inhabited by nomadic Kyrgyz in the 11th-13th centuries, to this day 99% of the population is Kyrgyz. The nomadic way of life has remained unchanged over the centuries and has been preserved because the land is relatively remote from war and trade routes. For this reason, there are relatively few historical monuments in the region. It was not until the Soviet era that towns, villages and roads began to be built.</p>\r\n\r\n<p>During the Soviet era, tourism was banned in most of Naryn Region in order to preserve the pristine nature of the region. This makes Naryn region an ideal place for ecotourism.</p>		https://nomadslife.travel/cuaranteed-tours/21	2023-10-18 13:12:47.163411+03	1	5
58	en	Kyrgyz- Ata Nature Reserve	Kyrgyz- Ata Nature Reserve is a nature reserve in Osh region, 40 km south of Osh city, on the northern slopes of the Alai Mountains. There are many tourist attractions in Kyrgyz-Ata.	<p><strong>Kyrgyz- Ata Nature Reserve</strong><br />\r\nKyrgyz- Ata Nature Reserve is a nature reserve in Osh region, 40 km south of Osh city, on the northern slopes of the Alai Mountains. There are many tourist attractions in Kyrgyz-Ata. The majority of the reserve is a botanical reserve created to protect the juniper forests, mountain tulips and saffron that grow in the region. The Alai mountain range refers to the Pamir Plateau mountain range consisting of multi-colored marble. It includes the valleys of Kyrgyzstan Ata, Kara-oy, Karldai and Mazar. In the mountainous areas of the national park there is the Pervomaisky pass leading to the Kichi-arai valley. The most popular pass in Kyrgyzstan Ata National Park is the Kara-oy gorge. Every weekend it attracts many tourists from Osh and neighboring villages. The picture of Mount Nookat is widely known and is located in the Aravan Say gorge, penetrated by the Aravan Sai River. On the steep walls of the gorge, 500 meters high, one can see images of animals and various signs of religious significance left by primitive people.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/17	2023-10-18 13:13:34.624004+03	1	6
59	en	Son-Kul Lake	Son-Kul Lake (e.g. Son-Kul, Sonkul) is the second largest lake in Kyrgyzstan and is located in the Naryn region, about 280 km from Bishkek.	<p><strong>Son-Kul Lake</strong></p>\r\n\r\n<p>Son-Kul Lake (e.g. Son-Kul, Sonkul) is the second largest lake in Kyrgyzstan and is located in the Naryn region, about 280 km from Bishkek.</p>\r\n\r\n<p>Son-Kul is located in a mountain valley at an altitude of 3000 m and is bordered by the Son-Kul-ridge to the north and the Moldo-To ridge to the south. The lake is cold and quite deep with a maximum depth of 14 meters. Son-kul freezes approximately in mid-November and thaws in mid-April. The area around the lake is very beautiful, especially in summer. Sonkul is surrounded by the hills and snowy peaks of the Central Tien Shan Mountains. Due to the high altitude there are no trees, only low, hard grasses and edelweiss.The lakes are not very large, but their shores are quite different from each other. The southern and eastern shores are quite flat and flooded in some places, while the northern and western shores are quite steep. The road along the lake winds through the hills. Cycling is particularly enjoyable. The best views of the lake are on the western shore. Sonkul is inaccessible and human impact is minimal. Only in summer do nomads come from the neighboring villages of the Jumgal valley and Naryn. The rest of the year the Son-kul valley is completely deserted. On the northern shore of the lake is the mausoleum of Tailak Batyr, the only stone building in the valley, built in the late 19th century.</p>\r\n\r\n<p>Son Kul Lake is very popular with tourists and many tourist routes pass through it. Due to the geographically favorable location of Son-kul Lake, it is possible to combine tourism in Son-kul with a trip from one part of the country to another. The most popular and accessible is Kalmak-Ashu (northeastern part of the lake) on the Bishkek-Torugard road, 3 km from the village of Sari Bulak. It is also possible to reach the lake by car via Terskey Torpok (also known as 33 Parrots and located in the southeastern part of the lake), Moldo Ashuu (on the southern shore of the lake) and Kara Keche (on the southwestern shore) passes. In addition to vehicular crossings, a number of pedestrian crossings also lead to the lake, which can also be accessed by bicycle or horse. These include Tuz-ashu Pass, Chilber Pass and Uzbek Pass.</p>		https://nomadslife.travel/cuaranteed-tours/23	2023-10-18 13:14:02.664025+03	1	5
60	en	Abshir Ata	The Abshir Ata gorge is mainly known for its 15-meter waterfall flowing from a small karst cave in the rock. The waterfall and the gorge are among the most visited sights in the Osh region.	<p><strong>Abshir Ata</strong><br />\r\nThe Abshir Ata gorge is mainly known for its 15-meter waterfall flowing from a small karst cave in the rock. The waterfall and the gorge are among the most visited sights in the Osh region. The area is located 70 km from the city of Osh.For centuries the waterfall has been considered a sacred place. This is because there are very few waterfalls on the territory of Kyrgyzstan that flow directly from the rocks. The fact that the water from the Abshir-Ata waterfall is rich in minerals and beneficial for health is also a justification for this waterfall. The waterfalls are located in the beautiful valley of the Abshir Sai River at an altitude of 1500-2500 meters. In addition to the waterfalls, there are many other attractions in the valley: for example the Kulkies Cave and the Ciryakana Cave. One of them is the Kotur Bulak water spring, which is considered sacred. It is believed that if tourists throw coins into this spring, they will be happy. In the Abshir Sai valley visitors can see paintings in the caves. The caves are located between 5 km and 20 km from the waterfalls. Ten kilometers from the waterfalls there is a small lake with pebble beds and nearby there is an abandoned mine where various minerals are mined.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/17	2023-10-18 13:14:17.416884+03	1	6
61	en	Kel-suu	Kel Suu is a glacial lake at an altitude of 3500 meters and is located in the south-east of the Narin region, close to the border between Kyrgyzstan and China. The water of the lake is bright blue and contrasts beautifully with the surrounding rocks. It is one of the most beautiful places in Kyrgyzstan and at the same time difficult to reach.	<p><strong>Kel-suu</strong></p>\r\n\r\n<p>Kel Suu is a glacial lake at an altitude of 3500 meters and is located in the south-east of the Narin region, close to the border between Kyrgyzstan and China. The water of the lake is bright blue and contrasts beautifully with the surrounding rocks. It is one of the most beautiful places in Kyrgyzstan and at the same time difficult to reach. Kehl Suu is a landslide lake formed in a large cleft between rocks. The lake is 9 km long and 500 meters to 2 km wide at its widest point. There is only one shoreline, so it is not possible to see the entire lake from the shoreline.</p>\r\n\r\n<p>The lake has an interesting feature, which is why it got the name Kel-Suu, which means &#39;leaving water&#39; in Kyrgyz. And indeed, the lake sometimes disappears, seeping into underground caves and caverns. That is why it is necessary to check if there is water in the lake before going there.</p>\r\n\r\n<p>Access to the lake is very difficult. It is located on a ridge that is difficult to reach by Kokjar Too and the road to the lake crosses the wide Aksay valley with many marshy areas and shallow water. Only an off-road vehicle with an experienced driver can reach the lake. The lake is in the border area and a border area permit is required for entry.</p>		https://nomadslife.travel/cuaranteed-tours/22	2023-10-18 13:14:45.809607+03	1	5
62	en	Chil-Ushtun Cave	Chil-Ushtun Cave is a karst cave located in the northwest of Osh region, near the village of Alavan. Caves in Kyrgyzstan are very rare. Caves are found in Kyrgyzstan only in the southern regions and there are not many of them.	<p><strong>Chil-Ushtun Cave</strong><br />\r\nChil-Ushtun Cave is a karst cave located in the northwest of Osh region, near the village of Alavan. Caves in Kyrgyzstan are very rare. Caves are found in Kyrgyzstan only in the southern regions and there are not many of them. One of the most famous is the Chil-Ushtun cave at an altitude of 1,100 meters. This cave consists of three halls of different sizes connected by a corridor. The entrance to the cave is on a steep rock that must be climbed. The total length of the cave is 400 meters. The cave halls are quite large and filled with numerous stalactites and stalagmites. The cave has been known to people for a long time, as evidenced by the Arabic inscriptions on the cave walls.Apart from Chil Ustun Cave, there are other caves in the region that differ in accessibility and depth. Chil Ustun Cave is located 3 km east of Aravan village, but it is not possible to enter the cave without special training and equipment.<br />\r\n&nbsp;</p>		http://localhost:3000/cuaranteed-tours/12	2023-10-18 13:15:09.398078+03	1	6
63	en	Chichkan Gorge	Chichkan Gorge is a long and picturesque gorge along the Bishkek-Osh road in the northern part of Jalal Abad region. Anyone who has traveled by car from Bishkek to Osh will probably remember it well. The gorge is forested and on its slopes are Tien Shan spruce trees, flowers and thickets of mountain nuts. Chychkan means 'rat' in Kyrgyz.	<p><strong>Chichkan Gorge</strong><br />\r\nChichkan Gorge is a long and picturesque gorge along the Bishkek-Osh road in the northern part of Jalal Abad region. Anyone who has traveled by car from Bishkek to Osh will probably remember it well. The gorge is forested and on its slopes are Tien Shan spruce trees, flowers and thickets of mountain nuts. Chychkan means &#39;rat&#39; in Kyrgyz. This specific name was given to the valley because of the numerous holes in its slopes where voles live. The average altitude of the gorge is 2200 meters. This is an ideal place to relax, have a picnic or take a short walk along the forested mountain slopes. The growth of so much vegetation would not have been possible without large quantities of water. Turbulent rivers flow through the valley bottom and into the Toktogul reservoir. There are also several small lakes in the gorge at an altitude of 3000 meters.<br />\r\nChychkan is famous for its honey. The gorge is rich in flowers and herbs, which makes the honey here unusually fragrant and delicious.</p>		https://nomadslife.travel/cuaranteed-tours/21	2023-10-18 13:15:26.400412+03	1	9
65	en	Tash Rabat	Tash Rabat (also Tash-Rabat) is an ancient caravanserai in the Narin region, not far from the Chinese border. In ancient times it was one of the key points on the Great Silk Road.The caravanserai is located in the southern part of the Atbashi Mountains, 3100 meters above sea level.	<p><strong>Tash Rabat</strong></p>\r\n\r\n<p>Tash Rabat (also Tash-Rabat) is an ancient caravanserai in the Narin region, not far from the Chinese border. In ancient times it was one of the key points on the Great Silk Road.The caravanserai is located in the southern part of the Atbashi Mountains, 3100 meters above sea level. Numerous caravans carrying eastern goods from China were accommodated here for centuries. The history of Stone Rabat dates back to ancient times. From the 2nd to the 1st century BC. In the 1st and 2nd centuries BC, merchant caravans visited the area. From the 2nd century BC to the 1st century AD and from the 1st century AD to the 2nd century AD, merchant caravans traveled to and from the area. Although the main routes of the Silk Road have changed since then, the region has continued to be used by trade caravans: Between the 10th and 11th centuries, a monastery was built here. According to various theories, Buddhist or Christian, the monastery fell into decay; in the 14th-15th centuries one of the four most important caravanserais in Central Asia was built on this site. It is a unique, perfectly preserved cultural and historical monument in Kyrgyzstan and one of the most important remains of the Great Silk Road.</p>		https://nomadslife.travel/cuaranteed-tours/18	2023-10-18 13:16:20.780038+03	1	5
66	en	Kara-Su Lake.	Kara- Su is a mountain lake in the Jalal Abad region, deep in the Taktalik Mountains, at an altitude of 2000 meters. The water color of Kala Su Lake is extremely blue. The lake is 90 meters deep and covers an area of 15 km². The shores of the lake are completely different.	<p><strong>Kara-Su Lake.</strong><br />\r\nKara- Su is a mountain lake in the Jalal Abad region, deep in the Taktalik Mountains, at an altitude of 2000 meters. The water color of Kala Su Lake is extremely blue. The lake is 90 meters deep and covers an area of 15 km&sup2;. The shores of the lake are completely different. The northern shore is full of rocks and boulders and covered with thorny bushes. The area is rich in vegetation: Tyan-shan fir and birch, as well as numerous giant dogwoods, dogwoods and honeysuckle. From the shore of Kara- Su Lake one can see Alampasha, one of the peaks of the Fergana Mountains. From the lake there is a road to Kapka Tash and a road to the pass leading to the Arslanbob forest in the southern part of the Fergana Mountains.</p>		https://nomadslife.travel/cuaranteed-tours/29	2023-10-18 13:16:26.388312+03	1	9
64	en	Jayloo in Osh	For generations, the Kyrgyz have lived nomadically and traveled across the mountains with herds of cattle. Seasonal pastures were divided into winter (kyshtoo), spring (jayloo), summer (jailoo) and autumn (kyshtoo). Winter pastures were located in sheltered valleys, while spring and autumn pastures were slightly further away from winter pastures, but still close.	<p><strong>Jayloo in Osh</strong><br />\r\nFor generations, the Kyrgyz have lived nomadically and traveled across the mountains with herds of cattle. Seasonal pastures were divided into winter (kyshtoo), spring (jayloo), summer (jailoo) and autumn (kyshtoo). Winter pastures were located in sheltered valleys, while spring and autumn pastures were slightly further away from winter pastures, but still close. Summer pastures were located in high steppes and wide gorges with dense vegetation and abundant water.<br />\r\nToday, most Kyrgyz people are sedentary, but some are semi-nomadic. Winters are usually spent in villages (sometimes called kishlaks (village), the generic term for the countryside today). In summer, shepherds take their flocks (usually sheep, cattle, horses and goats) to Jailu. Yurts are the most common dwellings and are scattered across the vast green meadows of the mountains. Some of the most famous jayloo are located around Sonkul in Naryn and in the Suusamir valley on the road between Osh and Bishkek. In Talas region.These places are known for their pure nature and delicious dairy products (including kumis, fermented mare&#39;s milk). Many tourists travel to Jayloo to stay in traditional Kyrgyz yurts, explore the region on horseback and experience a bit of the traditional nomadic lifestyle.</p>		http://localhost:3000/cuaranteed-tours/29	2023-10-18 13:16:07.481273+03	2	6
67	en	Arslanbob Forest	Arslanbob Forest (also called Arstanbop) is a large walnut forest located in the Fergana and Chatkal mountain ranges in the Jalal-Abad region, at an altitude of 1,700 meters. It is the largest walnut forest in the world (700,000 hectares) and one of the most spectacular places in Kyrgyzstan.	<p><strong>Arslanbob Forest</strong><br />\r\nArslanbob Forest (also called Arstanbop) is a large walnut forest located in the Fergana and Chatkal mountain ranges in the Jalal-Abad region, at an altitude of 1,700 meters. It is the largest walnut forest in the world (700,000 hectares) and one of the most spectacular places in Kyrgyzstan. Scientists claim that the forest is more than 50 million years old. Walnut trees, pistachios, almonds, cherry plums, pears and many other trees grow in this vast area. The total number of plant species growing here exceeds 130. Some walnut trees are over 1000 years old and each tree produces between 150 and 400 kg of fruit each year.<br />\r\nBesides the forest, the surroundings are also very interesting. The slopes of the Fergana and Chatkal mountain ranges are composed of dolomite, which makes them very different in color and topography from other Tian-shan mountain ranges. The pure white cliffs are next to the endless greenery of the Arslanbob forest. These huge forests need a lot of water, so there are numerous streams and rivers running through the area. There are also several lakes and waterfalls, the most famous of which are Bolshoy Arslanbovsky (80 m) and Little Arslanbovsky (35 m).</p>		https://nomadslife.travel/cuaranteed-tours/23	2023-10-18 13:17:28.059572+03	1	9
68	en	Kekemeren gorge	One of the most beautiful roads in Kyrgyzstan is located in a small area between the Suuzamir and Jumgal valleys, where the powerful and beautiful Kekemeren River flows. This place is called Kekemeren Gorge.The Kekemeren Gorge is located in the northwestern part of Naryn, about 200 km from Bishkek.	<p><strong>Kekemeren gorge</strong></p>\r\n\r\n<p>One of the most beautiful roads in Kyrgyzstan is located in a small area between the Suuzamir and Jumgal valleys, where the powerful and beautiful Kekemeren River flows. This place is called Kekemeren Gorge.The Kekemeren Gorge is located in the northwestern part of Naryn, about 200 km from Bishkek. The gorge is about 30 km long. The gorge consists of red and yellow rocks, which contrast beautifully with the green and striking blue river. The large boulders are prone to erosion and form huge vertical boulders up to 200 meters high, as well as amazing forms of sand and clay. The rivers flowing through the gorge are formed by the confluence of the West Karakol and Suusamir rivers, which flow from the southern slopes of the Kyrgyz ridge and carry their waters to the Naryn River.The canyon&#39;s dirt roads are suitable for vehicles and bicycles, and the river banks offer excellent places for relaxation and picnics. The area is also popular with rafting enthusiasts. Rafting in Kekemeren is a dangerous and unforgettable adventure.</p>		https://nomadslife.travel/cuaranteed-tours/14	2023-10-18 13:18:08.423694+03	1	5
69	en	Petroglyphs of Saimaluu-Tash	Located on the eastern slopes of the Fergana Mountains in the Jalal-Abad region, Saimaluu -Tash is the largest collection of petroglyphs in Central Asia and one of the largest in the world. The area is a designated national park. It is located at an altitude of more than 3000 meters above sea level. Saymaluu-Tash means 'patterned stone' in Kyrgyz.	<p><strong>Petroglyphs of Saimaluu-Tash</strong><br />\r\nLocated on the eastern slopes of the Fergana Mountains in the Jalal-Abad region, Saimaluu -Tash is the largest collection of petroglyphs in Central Asia and one of the largest in the world. The area is a designated national park. It is located at an altitude of more than 3000 meters above sea level. Saymaluu-Tash means &#39;patterned stone&#39; in Kyrgyz. There are more than 90,000 paintings from different historical periods. It consists of paintings from different historical periods. The oldest paintings on the rocks of Saymaluu- Tash date from the 3rd-1st millennium BC, the newest ones from the 1st-8th centuries AD. It is possible to see how the painting methods and the specific nature of the paintings have changed over time.<br />\r\nThe subjects depicted are varied and reflect the religious beliefs of the ancients and their attitudes towards the world. Examples include images of wild animals, livestock, birds and humans, geometric symbols and signs, images of the faces of gods and unexplained human figures. Petroglyphs are found under snow and can only be seen in July and August.<br />\r\nThe paintings of Saymaluu - Stone have become one of the symbols of Kyrgyzstan. Petroglyph patterns and motifs are also widely used in the design of the World Nomad Congress and souvenirs.</p>		https://nomadslife.travel/cuaranteed-tours/29	2023-10-18 13:18:25.307001+03	1	9
70	en	Lake Chatir Kul.	This glacial lake is located at an altitude of 3,500 meters. The lake is located in the southernmost part of the Naryn region, near the border with China, between the At Bashi and Torugart Too mountain ranges and occupies a large area in the hollow between the mountains.	<p><strong>Lake Chatir Kul.</strong></p>\r\n\r\n<p>This glacial lake is located at an altitude of 3,500 meters. The lake is located in the southernmost part of the Naryn region, near the border with China, between the At Bashi and Torugart Too mountain ranges and occupies a large area in the hollow between the mountains. The lake is the third largest lake in Kyrgyzstan after Issyk-Kul and Son Kul. The climate near Chatir Kul is extremely harsh. Winter temperatures can reach minus 50&deg;C and the lake freezes for most of the year. The shores of the lake are marshy and have only low, hardy vegetation. The lake is not very deep, reaching a depth of 20 meters.Near the lake is the Torugart Pass to China. In Chatir-Kul, there is the Karalat Zhipirk National Reserve.</p>		https://nomadslife.travel/cuaranteed-tours/17	2023-10-18 13:18:43.688313+03	1	5
71	en	Sary- Chelek Lake	Sary Chelek Lake is the largest mountain lake in western Tyan Shan and a designated nature reserve. It is located in the western part of Jalal Abad district at an altitude of 1940 meters.\r\nSary Chelek is a landslide lake. It was formed when a river overflowed its valley after a major earthquake about 10,000 years ago. The lake covers an area of about 50 km² and is 7.5 km long.	<p><strong>Sary- Chelek Lake</strong><br />\r\nSary Chelek Lake is the largest mountain lake in western Tyan Shan and a designated nature reserve. It is located in the western part of Jalal Abad district at an altitude of 1940 meters.<br />\r\nSary Chelek is a landslide lake. It was formed when a river overflowed its valley after a major earthquake about 10,000 years ago. The lake covers an area of about 50 km&sup2; and is 7.5 km long. The first thing you notice about Sary Chelek is the incredible clarity of the water. This is very rare in Tien Shan lakes, where the water is often opaque due to the large amount of mineral pollution in mountain lakes. Sary Chelek is an exception. Sari Chelek is the second deepest lake in Kyrgyzstan and the third deepest in Central Asia. Its depth reaches 234 meters in some places, which is why the lake never gets warmer than 20&deg;C in summer and hardly cools down to 0&deg;C in winter.<br />\r\nThe shores of Sary chelek Lake are densely covered with fir trees, and spruce forests literally stretch from the water&#39;s edge to the tops of the surrounding mountains. The Sary chelek Biosphere Reserve zone begins on the southern shore of the lake, created to preserve the unique natural diversity of the region. In addition to Sary chelek Lake, the reserve includes four other lakes and a large forest area of walnut and fruit trees. The largest lakes in the region, Iri Kel and Kaila Kel, are inferior to Lake Sari Chelek in size, but not in beauty. Fallen tree trunks and schools of fish can be seen at the bottom of these lakes.<br />\r\nFor trekking and equestrian tourism, there are winding hiking trails that lead through small but somewhat steep gorges to the shores of the five Sary-Chelek lakes. The tourist base for the lakes is the village of Arkit, a few kilometers downstream from Sari Chelek Lake.</p>		https://nomadslife.travel/cuaranteed-tours/27	2023-10-18 13:19:23.084947+03	1	9
72	en	Kara-Keche gorge	The Kara-Keche Gorge is a long gorge in the western part of Naryn Region, known for the Kara-Keche Pass and Kyrgyzstan's largest coal field. The gorge separates the Jumgal and Sonkul valleys	<p><strong>Kara-Keche gorge</strong></p>\r\n\r\n<p>The Kara-Keche Gorge is a long gorge in the western part of Naryn Region, known for the Kara-Keche Pass and Kyrgyzstan&#39;s largest coal field. The gorge separates the Jumgal and Sonkul valleys.The pass is located in the Moldo-Too mountains and is 50 km long. The nature and topography of the gorge is quite remarkable. The slopes of the valley consist of red-colored rocks, which contrast wonderfully with the fir trees and other green vegetation that grow on the slopes of this mountain. At a depth of 2,800 meters below sea level lies the Kara Ke&ccedil;he coal field. The highest point of the valley is the Kara Keche Pass at 3348 meters. From here, both Son-kul and the gorge can be seen.</p>		https://nomadslife.travel/cuaranteed-tours/12	2023-10-18 13:19:23.966078+03	1	5
73	en	Jayloo in Naryn	For generations, the Kyrgyz have lived nomadically and traveled across the mountains with herds of cattle. Seasonal pastures were divided into winter (kyshtoo), spring (jayloo), summer (jailoo) and autumn (kyshtoo).	<p><strong>Jayloo in Naryn</strong></p>\r\n\r\n<p>For generations, the Kyrgyz have lived nomadically and traveled across the mountains with herds of cattle. Seasonal pastures were divided into winter (kyshtoo), spring (jayloo), summer (jailoo) and autumn (kyshtoo). Winter pastures were located in sheltered valleys, while spring and autumn pastures were slightly further away from winter pastures, but still close. Summer pastures were located in high steppes and wide gorges with dense vegetation and abundant water.</p>\r\n\r\n<p>Today, most Kyrgyz people are sedentary, but some are semi-nomadic. Winters are usually spent in villages (sometimes called kishlaks (village), the generic term for the countryside today). In summer, shepherds take their flocks (usually sheep, cattle, horses and goats) to Jailu. Yurts are the most common dwellings and are scattered across the vast green meadows of the mountains. Some of the most famous jayloo are located around Sonkul in Naryn and in the Suusamir valley on the road between Osh and Bishkek. In Talas region.These places are known for their pure nature and delicious dairy products (including kumis, fermented mare&#39;s milk). Many tourists travel to Jayloo to stay in traditional Kyrgyz yurts, explore the region on horseback and experience a bit of the traditional nomadic lifestyle.</p>		https://nomadslife.travel/cuaranteed-tours/15	2023-10-18 13:20:04.59497+03	1	5
74	en	Naryn Canyon	The Naryn Canyon is a beautiful stream of the Naryn River located in the Tash-Kumyr district of the Jalal-Ava region of Kyrgyzstan. The canyon is famous for its spectacular view of the azure Naryn River.The Naryn River is the largest river in Kyrgyzstan and joins with the Karadarya River in Uzbekistan to form the Syr Darya, the second largest river in Central Asia.	<p><strong>Naryn Canyon</strong><br />\r\nThe Naryn Canyon is a beautiful stream of the Naryn River located in the Tash-Kumyr district of the Jalal-Ava region of Kyrgyzstan. The canyon is famous for its spectacular view of the azure Naryn River.The Naryn River is the largest river in Kyrgyzstan and joins with the Karadarya River in Uzbekistan to form the Syr Darya, the second largest river in Central Asia. The color of the water in this section of the river is very different from other rivers, as it flows through the Toktogul Reservoir and the cascade of the hydroelectric power station. Passing through the Toktogul Reservoir and Hydroelectric Power Plant cascade removes impurities from the water, giving it a beautiful blue color.</p>		https://nomadslife.travel/cuaranteed-tours/22	2023-10-18 13:20:27.327806+03	1	9
75	en	Toktogul Reservoir	Toktogul Reservoir is one of the largest reservoirs in Central Asia, located in the northern Jalal-Abad region.Construction of the reservoir began in 1965. The man-made lake covers an area of about 300 km² and forms a depression between clay hills. The average depth of the reservoir is 200 meters.	<p><strong>Toktogul Reservoir</strong><br />\r\nToktogul Reservoir is one of the largest reservoirs in Central Asia, located in the northern Jalal-Abad region.Construction of the reservoir began in 1965. The man-made lake covers an area of about 300 km&sup2; and forms a depression between clay hills. The average depth of the reservoir is 200 meters. The largest river in Kyrgyzstan, the Naryn River, flows into the reservoir. There are two large hydroelectric power plants, Toktogul and Krupsai. The bright blue color of the water contrasts wonderfully with the surrounding clay hills.<br />\r\n&nbsp;</p>		https://nomadslife.travel/cuaranteed-tours/21	2023-10-18 13:21:04.845883+03	1	9
\.


--
-- Data for Name: main_articleimages; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_articleimages (id, img, article_id) FROM stdin;
\.


--
-- Data for Name: main_categories; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_categories (id, name, rec_id) FROM stdin;
1	Category	1
2	Категория	2
\.


--
-- Data for Name: main_createowntour; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_createowntour (id, full_name, phone, email, status, cats, accommodation, transport, meal, people, comment, datefrom, dateto, gid) FROM stdin;
\.


--
-- Data for Name: main_gallery; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_gallery (id, lang, name, youtube_link) FROM stdin;
1	en	\N	\N
2	en	\N	\N
3	en	\N	\N
\.


--
-- Data for Name: main_galleryimages; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_galleryimages (id, name, img, created_at, gallery_id) FROM stdin;
1	\N	gallery/imgonline-com-ua-Resize-5JyMTe47bGmh3h_oufCYeq.jpg	2023-10-18 12:22:47.355597+03	1
2	\N	gallery/imgonline-com-ua-Resize-KxcbUSYTSkdtk6KG_26tNRvL.jpg	2023-10-18 12:22:47.359236+03	1
3	\N	gallery/imgonline-com-ua-Resize-TAaqk9SVc5Uoqt.jpg	2023-10-18 12:22:47.362201+03	1
4	\N	gallery/imgonline-com-ua-Resize-Ak8XCZjsPTvQXfb.jpg	2023-10-18 12:23:35.310428+03	2
5	\N	gallery/imgonline-com-ua-Resize-NjAKHkfQ5t6FK.jpg	2023-10-18 12:23:50.745234+03	3
\.


--
-- Data for Name: main_requests; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_requests (id, status, full_name, email, phone, size, budget, message, newsletter, contact, created_at, tour_id) FROM stdin;
\.


--
-- Data for Name: main_information; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_information (id, birth_date, nationality, address, from_where, language, currency, passport, passport_img, updated_at, request_id) FROM stdin;
\.


--
-- Data for Name: main_meals; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_meals (id, name, rec_id) FROM stdin;
1	Dinner	1
2	Ужин	2
\.


--
-- Data for Name: main_sitereviews; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_sitereviews (id, firstname, lastname, mark, text, photo, created_at, status) FROM stdin;
\.


--
-- Data for Name: main_transport; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.main_transport (id, name, rec_id) FROM stdin;
1	SUV	1
2	Седан	2
\.


--
-- Data for Name: tours_images; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.tours_images (id, location, img, tour_id) FROM stdin;
46	\N	tour_images/imgonline-com-ua-Resize-0MDGHIDNMuD0IJ_opR0X5N.jpg	16
47	\N	tour_images/imgonline-com-ua-Resize-eEXMjn5upmf.jpg	16
48	\N	tour_images/imgonline-com-ua-Resize-SvnnTRffU4Sh.jpg	16
3	\N	tour_images/one-day-tour-1_cGfEIUD.jpg	\N
20	\N	tour_images/naryn.jpg	\N
21	\N	tour_images/horse-riding-1_C80TtkP.jpg	\N
6	\N	tour_images/rafting-tour-2.jpg	\N
8	\N	tour_images/one-day-tour-1.jpg	\N
9	\N	tour_images/one-day-tour-1_1.jpg	\N
10	\N	tour_images/horse-riding-1.jpg	\N
11	\N	tour_images/talas.jpg	\N
7	\N	tour_images/rafting-tour-1.jpg	\N
12	\N	tour_images/rafting-tour-1_gdizeYY.jpg	\N
13	\N	tour_images/contrastykz-travel-380x250.jpg	\N
14	\N	tour_images/rafting-tour-1_5guaTX6.jpg	\N
15	\N	tour_images/kyrgyzstan-tour-1.jpg	\N
16	\N	tour_images/horse-riding-1_c33I1fI.jpg	\N
5	\N	tour_images/kyrgyzstan-tour-2_6E4EV1E.jpg	\N
17	\N	tour_images/kyrgyzstan-tour-2_IycDYiX.jpg	\N
18	\N	tour_images/one-day-tour-1_uI70i0K.jpg	\N
4	\N	tour_images/contrastykz-travel-380x250_9nXq4eb.jpg	\N
19	\N	tour_images/one-day-tour-1_ugPY7oH.jpg	\N
24	\N	tour_images/imagen-podpischiki-lajki-v-tiktok-2020-0ori.png	\N
22	\N	tour_images/2.jpg	\N
23	\N	tour_images/6fdbe9c8-e7cc-11ec-af0e-127af9f4eeb0.1600x900.jpeg	\N
25	\N	tour_images/x20201118164332-1fdwa.jpeg.pagespeed.ic.kW_u_gDPN_.jpg	\N
26	\N	tour_images/mercedes-benz-cle-front1.jpg	\N
27	\N	tour_images/mercedes-benz-cle-front1_XT2ohEU.jpg	\N
28	\N	tour_images/x20201118164332-1fdwa.jpeg.pagespeed.ic.kW_u_gDPN__ONhoZem.jpg	\N
29	\N	tour_images/mercedes-benz-cle-front1_XJC9ERp.jpg	\N
30	\N	tour_images/7da71c36-0d52-44c7-8374-dd53a1ff95c8.jpg	\N
49	\N	tour_images/imgonline-com-ua-Resize-Qu36NDJZu1.jpg	16
32	\N	tour_images/imgonline-com-ua-Resize-FrY1Dbp155zEbwgG.jpg	11
31	\N	tour_images/imgonline-com-ua-Resize-Es7QHjtz2hgEmb.jpg	11
33	\N	tour_images/imgonline-com-ua-Resize-k0gLBNiFVzk.jpg	11
50	\N	tour_images/imgonline-com-ua-Resize-jXD0wEmNJUN1W.jpg	17
34	\N	tour_images/imgonline-com-ua-Resize-4T5U8LMmH4_BDz7zB7.jpg	11
36	\N	tour_images/imgonline-com-ua-Resize-MnS7v2ZC2w.jpg	12
37	\N	tour_images/IMG_20231011_172731_143.jpg	\N
51	\N	tour_images/imgonline-com-ua-Resize-6FOa8A0BvAYPa.jpg	17
38	\N	tour_images/imgonline-com-ua-Resize-NIsMYsamQCYgIR_B8VSNrw.jpg	14
39	\N	tour_images/imgonline-com-ua-Compressed-HXOX7fvdqH8pYb.jpg	14
40	\N	tour_images/imgonline-com-ua-Compressed-MTpmFR2VqCpNtd.jpg	14
41	\N	tour_images/imgonline-com-ua-Compressed-9wwfckDA3wjTIx.jpg	14
42	\N	tour_images/imgonline-com-ua-Compressed-HXOX7fvdqH8pYb_w7MM15h.jpg	15
43	\N	tour_images/imgonline-com-ua-Resize-Es7QHjtz2hgEmb_7QBSwSB.jpg	15
44	\N	tour_images/imgonline-com-ua-Resize-4T5U8LMmH4_6SLnFDN.jpg	15
45	\N	tour_images/imgonline-com-ua-Resize-kCw9z2MOgYwdI.jpg	15
52	\N	tour_images/imgonline-com-ua-Resize-gR8XjIAQhOh9.jpg	17
53	\N	tour_images/imgonline-com-ua-Resize-HIzSNQOyahasawdI.jpg	17
54	\N	tour_images/imgonline-com-ua-Resize-7iAUg0DiL2AOZdV.jpg	18
55	\N	tour_images/imgonline-com-ua-Resize-mFa3HOY6l9hqs9Bc.jpg	18
56	\N	tour_images/imgonline-com-ua-Resize-vYIGObqktN3.jpg	18
57	\N	tour_images/imgonline-com-ua-Resize-uOz6Ryk84ZXvUzS.jpg	18
58	\N	tour_images/imgonline-com-ua-Resize-7uN9Ib3JF3yB3cut.jpg	19
59	\N	tour_images/imgonline-com-ua-Resize-41fwkrXskj.jpg	19
60	\N	tour_images/imgonline-com-ua-Resize-2q5fK2IkKwzu.jpg	19
61	\N	tour_images/imgonline-com-ua-Resize-gULdm3FYtLkx.jpg	19
62	\N	tour_images/imgonline-com-ua-Resize-pAQTChWOd5.jpg	20
63	\N	tour_images/imgonline-com-ua-Resize-TFU9SKbtq27k.jpg	20
64	\N	tour_images/imgonline-com-ua-Resize-qrEHSxRVea.jpg	20
65	\N	tour_images/imgonline-com-ua-Resize-B4xNcAnbEUqWjT.jpg	20
66	\N	tour_images/imgonline-com-ua-Resize-TZ3PHvTBwy.jpg	21
67	\N	tour_images/imgonline-com-ua-Resize-USlZIUGZrB.jpg	21
68	\N	tour_images/imgonline-com-ua-Resize-VZsByS8EOHdb0.jpg	21
69	\N	tour_images/imgonline-com-ua-Resize-KQWEQg7QAkz0r.jpg	21
70	\N	tour_images/imgonline-com-ua-Resize-ZOxfNIwIpnGl0w.jpg	22
71	\N	tour_images/imgonline-com-ua-Resize-O8LTbhpS8xUrgOlR.jpg	22
72	\N	tour_images/imgonline-com-ua-Resize-BGcgvXXSm2C.jpg	22
73	\N	tour_images/imgonline-com-ua-Resize-c8cL5gLV33G.jpg	22
74	\N	tour_images/imgonline-com-ua-Resize-7eHChDN1BvY.jpg	23
75	\N	tour_images/imgonline-com-ua-Resize-g6CnVfkLpZes2acR.jpg	23
76	\N	tour_images/imgonline-com-ua-Resize-zdcTFyfF94b.jpg	23
77	\N	tour_images/imgonline-com-ua-Resize-lLFjYP64KGVt8v2.jpg	23
78	\N	tour_images/imgonline-com-ua-Resize-GQcfQxWUQTy5D0.jpg	24
79	\N	tour_images/imgonline-com-ua-Resize-A8SzsWZrb1kO1.jpg	24
80	\N	tour_images/imgonline-com-ua-Resize-Ak8XCZjsPTvQXfb.jpg	24
81	\N	tour_images/imgonline-com-ua-Resize-o9aQZRlAFP.jpg	24
82	\N	tour_images/imgonline-com-ua-Resize-oGZz6nMzsxcYM0.jpg	25
83	\N	tour_images/imgonline-com-ua-Resize-M869Nktkz9n.jpg	25
84	\N	tour_images/imgonline-com-ua-Resize-NjAKHkfQ5t6FK.jpg	25
85	\N	tour_images/imgonline-com-ua-Resize-l4nISXKl30.jpg	25
86	\N	tour_images/imgonline-com-ua-Resize-dLFE8710fVlzALK1.jpg	26
87	\N	tour_images/imgonline-com-ua-Resize-A8SzsWZrb1kO1_4BK9ZWA.jpg	26
88	\N	tour_images/imgonline-com-ua-Resize-gR8XjIAQhOh9_kEEtafr.jpg	26
89	\N	tour_images/imgonline-com-ua-Compressed-3FLDWGzDxmrXEO.jpg	26
90	Altyn-Arashan Gorge	tour_images/imgonline-com-ua-Resize-HQ2FBWFOVAl8.jpg	27
91	\N	tour_images/imgonline-com-ua-Resize-TAaqk9SVc5Uoqt.jpg	27
92	\N	tour_images/imgonline-com-ua-Resize-idfCK0HCovo.jpg	27
93	\N	tour_images/imgonline-com-ua-Resize-umWVnJnIBkaXN.jpg	27
94	\N	tour_images/imgonline-com-ua-Resize-TAaqk9SVc5Uoqt_M1Xp93o.jpg	28
95	\N	tour_images/imgonline-com-ua-Resize-O8LTbhpS8xUrgOlR_lGwEV3P.jpg	28
96	\N	tour_images/imgonline-com-ua-Resize-Qu36NDJZu1_bBfebZ4.jpg	28
97	\N	tour_images/imgonline-com-ua-Resize-fVXdljT41HO.jpg	28
98	\N	tour_images/imgonline-com-ua-Resize-KxcbUSYTSkdtk6KG.jpg	29
99	\N	tour_images/imgonline-com-ua-Resize-OFXFRgH9Rm.jpg	29
100	\N	tour_images/imgonline-com-ua-Resize-5JyMTe47bGmh3h.jpg	29
101	\N	tour_images/imgonline-com-ua-Resize-TamJ7XfO4NDtlhW.jpg	29
\.


--
-- Data for Name: tours_route; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.tours_route (id, day, start, finish, description, hotel, meals, tour_id) FROM stdin;
3	1	Баткен	Бишкек	<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>	Avangard	Dinner	\N
4	2	Бишкек	Чон-Кемин	<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>	ЖЫЛДЫЗ	Завтрак	\N
1	1	Баткен	Ыссык-кол	<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>	Avangard	Dinner	\N
2	2	Ыссык-кол	Кол	<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>	ЖЫЛДЫЗ	Завтрак	\N
15	1	Бишкек	Бурана	<p>Тест</p>	Бурана отель	Все включено	\N
13	1	Bishkek	Burana	<p>Cloudflare &mdash; американская компания, предоставляющая услуги CDN, защиту от DDoS-атак, безопасный доступ к ресурсам и серверы DNS. Сервисы Cloudflare работают как обратный прокси для сайта. Главный офис компании находится в Сан-Франциско, есть офисы в Лондоне, Сингапуре, Шампейне, Остине, Бостоне и Вашингтоне.</p>	Burana Hotel	Все включено	\N
14	2	Бишкек	Ыссык-Ата	<p>Cloudflare &mdash; американская компания, предоставляющая услуги CDN, защиту от DDoS-атак, безопасный доступ к ресурсам и серверы DNS. Сервисы Cloudflare работают как обратный прокси для сайта. Главный офис компании находится в Сан-Франциско, есть офисы в Лондоне, Сингапуре, Шампейне, Остине, Бостоне и Вашингтоне.</p>	Гостиница	\N	\N
16	1	Баткен	Ыссык-кол	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	Avangard	Dinner	\N
17	2	Ыссык-кол	Ысык-Кол	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	ЖЫЛДЫЗ	Завтрак/Обед/Ужин	\N
5	1	Бишкек	Жалал-Абад	<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>	Дом	Абед/Завтрак	\N
6	2	Жалал-Абад	\N	<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>	дом	Абед/Завтрак	\N
7	1	Бишкек	Нарын	<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>	Дом	Абед/Завтрак	\N
8	2	Нарын	Нарын Дарясы	<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>	дом	Абед/Завтрак	\N
9	1	Бишкек	Нарын	<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>	Дом	Абед/Завтрак	\N
10	2	Нарын	Нарын Дарясы	<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>	дом	Абед/Завтрак	\N
11	1	Бишкек	Жалал-Абад	<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>	Дом	Абед/Завтрак	\N
12	2	Жалал-Абад	Тоо	<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>	Дом	Абед/Завтрак	\N
18	1	Bishkek	Bokonbaeva city (270 km drive)	<p>Pick up from hotel in Bishkek about 8 am in the morning and drive to Bokonbaeva city in Issyk-kul region. Lunch on the way. In Bokonbayevo Eagle hunting will be in a big wide field using rabbit ( optional- if you are ok using us an animal for show as victim) as a hunting victim. At the same&nbsp; place will be archery &nbsp;show and pure kyrgyz hunting dog&nbsp; Taygan hunting. After show, return to the house of M&Uuml;N&Uuml;SHK&Ouml;R&rdquo; (Golden Eagle Hunter). Where you can see how the Munushkor family looks after eagles and the way they live in usual simple village. Dinner and overnight at&nbsp; Munushkor family house.</p>	Family house	breakfast/lunch/dinner	11
19	2	Bokonbaeva	\N	<p>After the breakfast, its horse riding day. In total horse riding will take from 6 to 8 hours, going to Shatyly panorama and coming back. . Picnic lunch in the panaroma. &nbsp;In Shatyly panorama where opens wide amazingly beautiful view of nature where you can take photos , videos and just enjoy the silently beautiful nature. Dinner will be in Yurt camp near the Issky-kul lake. Where you can walk and swim if you wish. Overnight in yurt camp with share toilet and shower.</p>	yurt camp	Breakfast/lunch/dinner	11
20	3	Bokonbaeva	(second day horse riding)	<p>&nbsp;If yesterday&rsquo;s horse riding was more like not enough, here we go again. Today you will ride the horse to the&nbsp; different way to&nbsp; Bos Beshik jayloo. It wont take longer than yesterday, so no rushing, picnic on the top of the panorama.&nbsp; Easy ride day to another Chap panorama with the best view mountains with trees. On the way back, you will pass through beach, Issyk-Kul lake beach. Whole journey will take near 5-6 hours. After return, local village banya ( sauna ) will be waiting for you with steam room and hot water. Its of course not like in big city but still possible to have hot shower and use steam room. Dinner in with family as in first day. Family stay overnight in the same house as 1st day.</p>	Family stay overnight in the same house as 1st day.	Breakfast/lunch/dinner	11
21	4	Bokonbaeva	Bishkek (270 km drive)	<p>Approximately about 9 am after breakfast we will drive back to Bishkek. Lunch in cafe on the way and &nbsp;there will be a stop at the Burana tower. Heritage from the Great Silk Road from the 12th century. Short excursion.</p>	3-4 star hotel in Bishkek	Today is only breakfast and lunch. No dinner	11
22	1	Bishkek	Bokonbaeva city (270 km drive)	<p>Pick up from hotel in Bishkek about 8 am in the morning and drive to Bokonbaeva city in Issyk-kul region. Lunch on the way. In Bokonbayevo Eagle hunting will be in a big wide field using rabbit ( optional- if you are ok using us an animal for show as victim) as a hunting victim. At the same&nbsp; place will be archery &nbsp;show and pure kyrgyz hunting dog&nbsp; Taygan hunting. After show, return to the house of M&Uuml;N&Uuml;SHK&Ouml;R&rdquo; (Golden Eagle Hunter). Where you can see how the Munushkor family looks after eagles and the way they live in usual simple village. Dinner and overnight at&nbsp; Munushkor family house.</p>	Family house	breakfast/lunch/dinner	12
23	1	Bokonbaeva	\N	<p>After the breakfast, its horse riding day. In total horse riding will take from 6 to 8 hours, going to Shatyly panorama and coming back. . Picnic lunch in the panaroma. &nbsp;In Shatyly panorama where opens wide amazingly beautiful view of nature where you can take photos , videos and just enjoy the silently beautiful nature. Dinner will be in Yurt camp near the Issky-kul lake. Where you can walk and swim if you wish. Overnight in yurt camp with share toilet and shower.</p>	yurt camp	Breakfast/lunch/dinner	12
24	3	Bokonbaeva	Bishkek (270 km drive)	<p>Approximately about 9 am after breakfast we will drive back to Bishkek. Lunch in cafe on the way and &nbsp;there will be a stop at the Burana tower. Heritage from the Great Silk Road from the 12th century. Short excursion.</p>\r\n\r\n<p>Today is only breakfast and lunch. No dinner</p>	3-4 star hotel in Bishkek	Breakfast/lunch	12
25	1	Test	Test	<p>Test</p>	\N	\N	\N
26	1	Bishkek city	Kochkor town	<p>From hotel in Bishkek,&nbsp; will start a city tour. Visit the Central Square and Osh Bazaar (Eastern Market). Then transfer to Kochkor village (260 km) for lunch. Optional visit to a felt carpet workshop where you can buy souvenirs and make your own carpets. Dinner with Kyrgyz family. Overnight in family-run accommodation.</p>	Family house	breakfast/lunch/dinner	14
27	2	kochkor town	Jaman-echki	<p>After an early breakfast, transfer to Jumgal valley, the starting point for horse riding below the Kizart Pass. You will be met by your guide and rider. Kizart Kiya Jayloo is a relatively flat sea of grass. Cross the Char Archa Pass (3061m) and enter the Char Archa Valley. Lunch at Kilemchi Jayloo with a view of Mount Baba Ata (4,400m).After lunch, cross the Jaljis Karagai Pass (3400m) and cross the Son-kol Mountain Range.Driving time approximately 5-6 hours.Dinner and overnight at the Yurt Camp.</p>	yurt camp	Breakfast/lunch/dinner	14
28	3	Jaman Echki	Turpar Tash.	<p>Breakfast. Horseback riding along the lake for about 4-6 hours. From June to September local people live and graze their animals in the grasslands (jayloo) around the lake. A taste of the open air and the free life of nomadic people. You can also taste the traditional Kyrgyz drink kimyz (fermented mare&#39;s milk).Riding time is about 4-6 hours.Dinner and overnight in Yurt.</p>	yurt camp	Breakfast/lunch/dinner	14
29	4	Tulpar Tash	Tulga-Tash (Son-Kul lake)	<p>After breakfast 4-6 hours horseback riding. Explore the Stone Circle on the southern shore of Son-kul Lake. &#39;Tash Tulga&#39; or &#39;Tulga Tash&#39; means &#39;heart made of stone&#39;. In archaeological literature it is called the &#39;Eight-Stone Memorial Fence&#39;. Its history dates back to the 1st century BC.Duration approximately 4-6 hours.Dinner in Yurt Camp.</p>	Yurt camp	breakfast/lunch/dinner	14
30	5	Son-kul Lake	Bishkek	<p>After breakfast transfer to Bishkek (350 km). On the way, visit the 11th-century Burana Tower in the ancient city of Balasagun on the Great Silk Road. Arrival in Bishkek.Overnight in hotel.</p>\r\n\r\n<p>&nbsp;</p>	3-4 star hotel in Bishkek	breakfast/lunch/dinner	14
31	1	Bishkek city	Chon-Kemin ( 170km drive)	<p>Meet at the &nbsp;hotel. Drive to the beautiful national natural park of Chon-Kemin. On the way visit the historical architectural complex of &quot;Burana Tower&quot; (11th century).</p>\r\n\r\n<p>Chong- Kemin is a unique natural complex, ranging from semi-desert to snow fields and glaciers, where unspoiled natural landscapes are preserved and at the same time located close to relatively large settlements. Visitors can enjoy the unspoiled nature of this wonderful place. After lunch, there is a 2-3 hour horseback riding experience where you will learn how to ride a horse and sit in the saddle (for those who have never ridden a horse before) in preparation for the next day&#39;s horseback riding excursion. Overnight stay in comfortable guesthouse. Dinner in guesthouse.</p>	Comfortable guesthouse	lunch/dinner	15
32	2	Chon - Kemin	Kol - Kogur Lake (horseback riding).	<p>In the morning after breakfast, the climb to Lake Kel-Kogul begins with a ride on horseback. The Chon-Kemin valley is covered with incredibly rich forests: coniferous forests with spruce, remnants of Tien Shan fur trees; mixed forests with aspen, willow and birch; and floodplains (or riverbeds) full of shrubs and deciduous trees. Here you can get away from the hustle and bustle and enjoy the beauty of the Kyrgyz mountains. A picnic is provided for lunch.</p>\r\n\r\n<p>3-5 hours later, depending how experience you have in horse riding, on a clear day, you will be on the shore of a beautiful lake, reflecting the surrounding mountains, greenery and blue sky.</p>\r\n\r\n<p>We camp by the lake, prepare dinner, sit around the fire, tell stories and sing songs.</p>	Camping	Breakfast/lunch/dinner	15
33	3	Kol-Kogur lake	Shamsy  gorge  ( 200 km drive)	<p>After the breakfast, from Kol-Kogur Lake by horse, ride to the car and drive to Shamsy gorge. Stay overnight&nbsp; in &nbsp;guesthouse. lunch on the way. Free evening time. Dinner in guesthouse. &nbsp;</p>	Guesthouse	Breakfast/lunch/dinner	15
34	4	From guesthouse	To Shamsi Gorge	<p>&nbsp;Arrive at the place where guided horses are waiting for you. From here, you drive the horses to the Tuurakain&nbsp; valley where you will have lunch. After lunch, relax and enjoy a walk or horseback ride through the forest. Dinner and evening on tour basis.</p>	Camping, or Tour basis	breakfast/lunch/dinner	15
35	5	Horse track day in Shamsi Gorge	\N	<p>&nbsp;After breakfast, head to the Shamsi Valley on horseback. Cross a low pass and descend to the river. Ride along the river to your destination, the Shah&#39;s house. Riding time: 6-7 hours. Overnight in tents at 2000 m altitude.</p>\r\n\r\n<p>&nbsp;</p>	Overnight in tents	Breakfast/lunch/dinner	15
36	6	Shamsi gorge	Bishkek	<p>Free time after breakfast. Then descent to the vehicle on horseback. Riding time: 4-5 hours. Return to Bishkek to the hotel. End of the program.</p>	3-4 star hotel in Bishkek	Breakfast/lunch (no dinner today)	15
37	1	Bishkek city	Chon-Kemin ( 170km drive)	<p>Meet at the &nbsp;hotel. Drive to the beautiful national natural park of Chon-Kemin. On the way visit the historical architectural complex of &quot;Burana Tower&quot; (11th century).</p>\r\n\r\n<p>Chong- Kemin is a unique natural complex, ranging from semi-desert to snow fields and glaciers, where unspoiled natural landscapes are preserved and at the same time located close to relatively large settlements. Visitors can enjoy the unspoiled nature of this wonderful place. After lunch, there is a 2-3 hour horseback riding experience where you will learn how to ride a horse and sit in the saddle (for those who have never ridden a horse before) in preparation for the next day&#39;s horseback riding excursion. Overnight stay in comfortable guesthouse. Dinner in guesthouse.</p>\r\n\r\n<p>&nbsp;</p>	Comfortable guesthouse	Lunch/dinner	16
38	2	Chon - Kemin	Kol - Kogur Lake (horseback riding).	<p>In the morning after breakfast, the climb to Lake Kel-Kogul begins with a ride on horseback. The Chon-Kemin valley is covered with incredibly rich forests: coniferous forests with spruce, remnants of Tien Shan fur trees; mixed forests with aspen, willow and birch; and floodplains (or riverbeds) full of shrubs and deciduous trees. Here you can get away from the hustle and bustle and enjoy the beauty of the Kyrgyz mountains. A picnic is provided for lunch.</p>\r\n\r\n<p>3-5 hours later, depending how experience you have in horse riding, on a clear day, you will be on the shore of a beautiful lake, reflecting the surrounding mountains, greenery and blue sky.</p>\r\n\r\n<p>We camp by the lake, prepare dinner, sit around the fire, tell stories and sing songs.</p>\r\n\r\n<p>&nbsp;</p>	Camping	Breakfast/lunch/dinner	16
39	3	Kol-Kogur lake	Bishkek ( 170 km drive)	<p>From Kol-Kogur Lake to Chon &ndash; Kemin guesthouse will take near 3-4 hours on horseback. In the morning, go to the glacier on horseback. Then descend to Chon-Kemin. Arrive and have lunch in Guesthouse. Return to Bishkek . End of program.</p>\r\n\r\n<p>&nbsp;</p>	3-4 star hotel in Bishkek	Breakfast/lunch (no dinner today)	16
40	1	Bishkek city	Kyzy-Oy Village (4 hours drive)	<p>From Bishkek to Kyzyloy: Depart from Bishkek in the morning and drive about 200 kilometers south to the village of Kyzyloy. Located deep in the Suusamyr Valley, on the banks of the majestic Kokomeren River, Kyzyl-Oi is an idyllic mountain village full of friendly people and exquisite Guesthouse where you can stay and rest, ready for the adventure ahead.</p>	Comfortable guesthouse	breakfast/lunch/dinner	18
41	1	Horseback riding:  Kyzyl-Oy	Oy-Kaying (4-5 hours horseback riding)	<p>From Kyzyl-Oy to Oy-Kaying: Today your journey begins outside the village of Kyzyl-Oi, where you will meet and familiarize yourself with your guide your horse. Initially it&#39;s a gentle uphill climb through Oi-Kaying Jailoo on a very easy path. At 6 km you will pass a large rock with ancient Persian writings on it, an interesting sight for both archaeologists and history buffs. Then continue through Jailoo for about 15km, gradually climbing until you reach the campsite at just under 3000m, where you have views of the valley you just came from. You will camp near a local pastoral area, learn about Kyrgyz nomadic life, and taste local cuisine.</p>	yurt camp	Breakfast/lunch/dinner	18
42	3	Horse trek: Oy-Kaying	Sary-Kol (4-5 hours horse trek)	<p>On the third day of the itinerary, participants will embark on a horse trek from Oy-Kaying to SaryKol. This leg of the journey is expected to take four to five hours on horseback.</p>\r\n\r\n<p>Embark on your ascent up the Oi Kaying Jailoo, gradually climbing until you reach the mountain pass at 3411m. Here, a breathtaking panoramic view of the valley awaits you, complete with a picturesque scene of horses, cattle, yurt settlements, and lush fir forests. As you make your descent from the pass, observe as the terrain around you shifts from high alpine to dense forest. Part ways with the main road and venture onto a smaller trail that meanders through the mountainside, winding its way through fir trees and babbling creeks. After a distance of approximately 20km from your starting point, you will find yourself settled on the tranquil shores of Sary-Kul, a magnificent lake enveloped by verdant greenery and tranquil forests.</p>	yurt camp or camping	Breakfast/lunch/dinner	18
43	4	Horse trek: SaryKol	Tegerek (4-5 hours horse trek)	<p>On the fourth day of the journey, there will be a horse trek from SaryKol to Tegerek. The trek will take approximately four to five hours to complete. On this day of your horseback tour, you will be continuing from Sary-Kol to Tegerek. The itinerary follows a route through the mountain valley and entails crossing several rivers. While you will not be traversing any large passes, you will encounter numerous mountainous hills that offer a unique perspective of the nomadic landscape, with vast herds of cattle grazing on the pastures. Experience the nomadic way of life as you travel along the streets of their land, and hone your horseback riding skills. After ascending the final uphill climb of Kok-Kya, you will reach the Jailoo Tegerek where you will spend the night camping in the wild.</p>	Camping	breakfast/lunch/dinner	18
44	5	Horse trek: Tegerek	Kyzart pass (5-6 hours horse trek)	<p>The journey from Tegerek proceeds towards the Kyzart Pass, crossing through vast open fields and gently undulating hills. Along the way, there will be a brief respite in the idyllic valley of Ok-Torkoy, where you can indulge in a delicious lunch at the local yurt camp. Once you are refreshed and rejuvenated, the tour to the Kyzart Pass will continue. Upon reaching the Kyzart Pass, transportation will be provided to the nearby village of Kyzart where you will spend the night in a comfortable local guesthouse. Take advantage of the warm bed and refreshing shower to recharge yourself for the upcoming adventures that await you the next morning.</p>	guesthouse	breakfast/lunch/dinner	18
45	6	Horse trek: Kyzart pass	Kilemche (4-5 hours horse trek)	<p>After breakfast at Kizyart Village guesthouse, return to your guide group and continue your adventure. You arrive at the Kizyart Pass where your guide team welcomes you back and prepares everything for you. Therefore, your journey will continue on horseback, passing through Kyzylkia jayloo. Drive over the Chaar Alcha Pass (3061 m) into the Chaar Alcha Valley and enjoy a delicious lunch by the fast-flowing river while admiring the view of the 4400 m high Mount Baba Atta. After lunch, cross the river and follow the path over lush hills to Kilemche Jailoo. The name means &quot;like a carpet&quot; and this patch of grass covers the entire mountain range. Overnight in yurt camp.</p>	yurt camp	Breakfast/lunch/dinner	18
46	7	Horseback riding: Kilemche	Tuz Ashuu (4-5 hours horseback riding)	<p>After breakfast in Kilemche, morning climb to Jalgyz-Karagai pass (3400 m). Hike through the Songkol Mountains and into the lake basin. The rocky climb is spectacular and offers great views of Kilemche Prison. After lunch at Jaman Echki, head west along the lake shore to the yurts of Tuz-Ashuu. Upon arrival you will meet your homestay family of Kyrgyz shepherds. Local families provide food and a accommodation in yurts.</p>\r\n\r\n<p>&nbsp;</p>	yurts	Breakfast/lunch/dinner	18
47	8	Horseback riding: Tuz Ashuu	TulparTash (4-5 hours horseback riding)	<p>Today it will be a relatively simple and easy drive along the shore to the west of the lake. This is a great opportunity to test your riding skills in the flat, open valley of Soncol. Explore Jailoo and learn more about the Kyrgyz nomadic lifestyle. Additionally, you will have the opportunity to participate in Kyrgyzstan&rsquo;s traditional horse racing events, which is a unique experience on this trip. Overnight at Tulpar-Tash yurt camp.</p>\r\n\r\n<p>&nbsp;</p>	yurt camp.	Breakfast/lunch/dinner	18
49	1	Astana	Arrival (Kazakhstan)	<p>Arrival in Astana. Transfer to the hotel and check-in at 14:00. Free time. Overnight at the hotel.</p>	3-4 star hotel in Astana	lunch/dinner	19
50	2	Astana (Kazakhstan).	\N	<p>Breakfast. Meet your guide and the rest of the group in the hotel lobby at 09:00 for a sightseeing tour of the capital of Kazakhstan. A tour of the &quot;old center&quot; where merchants used to live. Walk along the Millennium Axis, named after the main architect Kisho Kurokawa, who developed the general layout of Astana. Visit the Opera House and the circular square with a fountain. Visit Independence Square with the 91-meter-high white monument &quot;Kazakh Ely&quot;, Kazret Sultan Mosque and the Palace of Peace and Concord. Continue along Nurzhol and Green Water Boulevards to see stunning skyscrapers with unique architecture. Take the elevator to the Baitelek Monument and enjoy the breathtaking panoramic view from the observation deck. End your morning tour with a visit to Khan Shatyr, the shopping and entertainment capital of the city. Depart for a delicious welcome lunch. Free time. Overnight at the hotel.&nbsp;&nbsp;Sightseeing time 4-5 hours.</p>	3-4 star hotel in Astana	Breakfast/lunch/dinner	19
51	3	Astana	Almaty, Kazakhstan.	<p>Breakfast. Transfer to the airport for flight to Almaty. Upon arrival - sightseeing tour of Almaty. Highlights include Panfilov Park, Zenkov Cathedral, Republic Square and Central Museum. A short drive (25 km) will take you to Chimbulak. Here you will visit a ski resort and take a cable car ride to enjoy a stunning view of the snowy peaks of the Tien Shan Mountains. Enjoy a spectacular show of specially trained falcons. Hunting with these magnificent birds is a characteristic feature of the Kazakh way of life. Return to the hotel by 18:00. Free time. Overnight at the hotel.</p>\r\n\r\n<p>Time for sightseeing 5-6 hours.</p>	3-4 star hotel in Alma-Ata	Breakfast/lunch/dinner	19
52	4	Almaty	Charyn Valley - Karakol (Kazakhstan/Kyrgyzstan)	<p>Breakfast. 08:00, meeting with guide and driver in the hotel lobby. Departure from Almaty to Charyn Canyon (220 km, 3-4 hours). This 154-meter canyon is located in Eastern Kazakhstan and is part of the Charyn National Park. In addition to unforgettable views of the huge canyon with colorful towers, in the national park you can see old ash groves and the Castle Valley. The beauty of the canyon will make you forget the fatigue from the long road from Almaty and you will remember the natural sights of Kazakhstan for a long time. Upon arrival in the gorge, take time for a picnic and rest. Then walk around the gorge and admire the views. Then transfer to Kegen (116 km) at the Kazakh-Kyrgyz border. Meet Kyrgyz driver and guide and transfer to Karakol (110 km) via Karkala valley. Dinner in an Uyghur family. Enjoy Kyrgyz folklore show, folk music and songs. Overnight at hotel in Karakol.</p>\r\n\r\n<p>Meals: picnic lunch and dinner.</p>	3-4 star hotel in Karakol	breakfast/lunch/dinner	19
53	5	Karakol	Jety-Oguz - Kochkor (Kyrgyzstan).	<p>After breakfast visit wooden Orthodox church and Dungan mosque in Chinese style. Then transfer to Jety-Oguz gorge. After a short excursion through the gorge transfer along the southern shore of Lake Issyk-Kul. On the way stop in Bokonbaevo to watch eagle hunting show. Continue to Kochkor. One of the best views of Issyk-Kul Lake opens from here. Dinner and overnight stay in a Kyrgyz family.</p>\r\n\r\n<p>Meals: lunch, dinner.</p>	guesthouse	Breakfast/lunch/dinner	19
54	6	Kochkor	Son-kul (Kyrgyzstan).	<p>Drive over Kalmak-Ashuu pass (3,400 m) to Sonkul (120 km), the highest (3,016 m) and remotest mountain lake in Kyrgyzstan. The lake is located on a treeless high-mountain plateau, where in summer shepherds come with their cattle and set up yurt camps where they live. In this picturesque place you can see herds of hundreds of cattle, numerous yurts, edelweiss flowers and camels. Accompanied by a guide you will get acquainted with the traditional life of Kyrgyz nomads and watch how local women prepare kymyz (mare&#39;s milk) - the national drink of Kyrgyzstan. There is also an opportunity to ride horses (optional, extra charge). Dinner and overnight stay in yurt camp.</p>\r\n\r\n<p>Meals: lunch and dinner.</p>	yurt camp	Breakfast/lunch (no dinner today)	19
55	7	Son-kul	Bishkek (Kyrgyzstan).	<p>Breakfast. Transfer to Bishkek at 09:00 (400 km). On the way visit the workshop in Kochkor where you can see how traditional Kyrgyz felt carpets are made. After lunch transfer to Bishkek via Burana Tower. The tower is part of the ancient city of Balasagun (11th-13th centuries), now a UNESCO World Heritage Site. Arrival in Bishkek. Overnight at the hotel.</p>	3-4 star hotel in Bishkek	Breakfast/lunch/dinner	19
56	8	Bishkek	departure (Kyrgyzstan).	<p>Breakfast. 09:00, excursion around Bishkek. Visit to Oak Park, Ala Too Square, Philharmonic Hall, Manas statue, Victory Square, Eastern Market (Osh Bazar) and the new mosque named after Mahmud Kashgari. After lunch transfer to Bishkek airport. End of group tour Kazakhstan-Kyrgyzstan.</p>\r\n\r\n<p>Duration 3 hours</p>	3-4 star hotel in Bishkek	Breakfast/lunch/dinner	19
57	1	Bishkek city	Cholpon-Ata (280 km/4 hours)	<p>Starts from Bishkek. Instead of agreeing before hand on the morning call and start circling Issyk-kul. Firstly, it&#39;s an hour&#39;s drive to the Burana Tower (formerly the minaret) near Tokmok city.</p>\r\n\r\n<p>Its minaret was built in the town of Balasagun; 1st of the capital of the Karahanid Province 11 AD.-12. it has existed for centuries.</p>\r\n\r\n<p>Lunch is on the way.</p>\r\n\r\n<p>Then it is the 2nd largest in the world after Lake Titicaca in South America. go to the alpine lake Isik-kul Lake.</p>\r\n\r\n<p>When we arrive at Cholpon Ata town, we have a few things:</p>\r\n\r\n<p>1) Outdoor petroglyph field.</p>\r\n\r\n<p>2) History Museum.</p>\r\n\r\n<p>(optional for extra pay): Take a trip to a local boat club for cruise in Issyk-Kul lake.</p>\r\n\r\n<p>After the trip, you will go to the resort area located on the shore of Lake Issyk-kul.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>	Overnight at the hotel.	Breakfast/lunch/dinner	20
48	9	Horse trekking: Tulpartash - Kizart village	Bishkek (3-4 hrs drive).	<p>Today we will conclude our trip. Departing from Turpartash, we will go from Son-kol to Kizart village via Uzbek pass. Once over the pass, a spectacular panorama of the Son-kol valley unfolds. After descending to the village and having lunch, we will transfer you back to Bishkek to the hotel.</p>\r\n\r\n<p>&nbsp;</p>	Bishkek  3-4 star hotel.	Breakfast/lunch/dinner	18
79	1	Bishkek	Karakol	<p>Departure in the direction of Bishkek - Karakol, 400 km, 8 hours on the way.</p>\r\n\r\n<p>Check-in at the Ruh-Ordo open museum near the shore of Issyk-Kul. Easy walk and lunch break in a cafe on the way. Lunch on the way. Arrival and accommodation in a guest house in Karakol.</p>\r\n\r\n<p>Dinner at the restaurant.</p>\r\n\r\n<p>&nbsp;</p>	Comfortable guesthouse	Breakfast/Lunch/dinner	24
58	2	Cholpon Ata town	Karakol town. (150 km /2.5 hour)	<p>In the morning, after breakfast, go to the town of Karakol town, located to the east of the lake. On the way you will have chance to swim in hot spring keremet-Suu, 3 pools. with &nbsp;different hot&nbsp; water temperature</p>\r\n\r\n<p>Przjevalskiy &nbsp;An outstanding Russian explorer of the Asian continent. Just beginning in Karakol town there&rsquo;s the Przjevalski &nbsp;museum&nbsp; to visit.</p>\r\n\r\n<p>Then a sightseeing tour of the town. Visit the Dungan Mosque, which is a unique structure in the Chinese style, but serves as a mosque. You can also see the old Orthodox Cathedral made of wood (19C).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>	Overnight at a hotel in Kara-Kol.	Breakfast/lunch/dinner	20
59	3	Karakol town	Jety-Oguz Valley – Bokonbaeva . (160 km)	<p>After breakfast, depart from Karakol town to the southern shore of Issyk-kul Lake and first come to Jety-Oguz Valley. Here you have a short walk to admire the canyon view from a bird&#39;s eye view. After walking, continue our trip on the southern shore of Lake Issık Kul. On the way, we stop at the Canyon &quot;Skazka&quot; (fairy tale) for a magnificent walk.</p>\r\n\r\n<p>Then pass through the villages of Bokonbaev and Kizil Tuu until you reach the village of Kochkor, which is already another province. In Kysyl-Tuu you will have chance to enjoy watching yurt building show.</p>\r\n\r\n<p>Eagle hunting show and horse riding 2 hours will wait for you in Bokonbaeva village. Overnight in yurt camp</p>\r\n\r\n<p>&nbsp;</p>	yurt camp	Breakfast/lunch/dinner	20
60	4	Bokonbaeva town	Bishkek City. (250 km/5 hours)	<p>After breakfast driving back to Bishkek. Lunch in Boom valley. Sightseeing in Bishkek, Monument to the national Hero of Kyrgyzstan Manas, Kurmanjandatka Monument, Oak Park, Osh bazaar, Victory Square, dedicated to the Soviet heroes of the Second World War. Transfer to hotel in Bishkek. End of the tour after dinner.</p>	3-4 star hotel in Bishkek	breakfast/lunch/dinner	20
61	1	Bishkek city	\N	<p>At the&nbsp; hotel in Bishkek meet your guide and driver and go for a city tour of Bishkek. Visit the National History Museum, Oak Park, Central Square and Philharmonic Hall, Osh bazaar. Overnight at the hotel.Sightseeing duration 4-5 hours.</p>	3-4 star hotel in Bishkek	lunch/dinner	21
62	2	Bishkek	Ala-Archa National Park - Racek Shelter 5-6 hours	<p>Morning transfer to Ala-Archa National Park (40 km). The hike starts from Alpine Camp (2200m), passing through coniferous forests, Ak Say Waterfall and flower fields to reach Racek Shelter (3200m) for about 4 hours. Picnic near Ak Say Waterfall (2700m). Overnight in tents or shelter (3200m).</p>\r\n\r\n<p>&nbsp;</p>	Overnight in tents or shelter	breakfast/lunch/dinner.	21
63	3	Racek Shelter	Peak Uchitel - Racek Shelter	<p>After breakfast, a sparkling hike to Peak Uchitel (4526m). Return to Racek Shelter. Overnight in tents or shelter.<br />\r\nbreakfast/lunch/dinner.<br />\r\n&nbsp;</p>	Overnight in tents or shelter	Breakfast/lunch (no dinner today)	21
64	4	Racek Shelter	Bishkek	<p>Free in the morning. Lunch. Return to Alpine Camp. Transfer to Bishkek. Overnight at the hotel. Time to say Bye. End of the tour<br />\r\n&nbsp;</p>	3-4 star hotel in Bishkek	breakfast/lunch/dinner	21
65	1	Bishkek city	\N	<p>From&nbsp; Bishkek hotel we will start&nbsp; Sightseeing (takes near 4-5 hours): Oak Park, Ala-Too Square, Philharmonic, Manas Statue, Victory Square. Osh bazaar. &nbsp;Overnight at the hotel.</p>	3-4 star hotel in Bishkek	breakfast/lunch/dinner	23
66	2	Bishkek	Karakol town. (400  km )	<p>Morning transfer to Karakol (400 km). On the way visit Burana Tower, an original example of Balasagun in the Qarakhanid town. Lunch at a local cafe. Then visit a stone open-air art gallery in Cholpon-Ata city, depicting scenes of wolf, long-horned ibex, goat, horse, snow leopard, sacrifice and hunting, said to have been painted between 500 BC and 100 AD . Overnight at the guesthouse</p>	Guesthouse	Breakfast/lunch/dinner	23
67	3	Karakol town	Jeti Oguz (3-4 hour hike).	<p>Transfer from Karakol via Svetlaya Polyana to the start of the hike. Continue through coniferous forest for about 2 hours to reach Nameless (2725m). On a cloudless day, you can experience spectacular views of the lake, snow-capped peaks and the &#39;Kok Jaik&#39; flower valley at the Jeti Oguz pass. From the pass, descend to Jety Oguz Gorge (2200 m). Visit the Jetty Oguz waterfall (20 m) on the way. Overnight in tents.</p>	Overnight in tents.	Breakfast/lunch/dinner	23
68	4	Jety-Oguz (5 hours on foot)	\N	<p>Walk up from the camp towards Tilety pass (around 2 hours). The path goes along Jety-Oguz river, through the conifer forests and flower fields. Picnic. Overnight in a tent under the Tilety pass.</p>	Overnight in a tent	breakfast/lunch/dinner	23
69	5	Jety Oguz	Tileti Pass (6-7 hours walking).	<p>After breakfast, hike towards Tileti Pass. The path follows the Tileti River (about 3 hours to the top of Tileti Pass (3665 m)). Descent to Karakol National Park. Overnight in tents (2465m).</p>	Overnight in tents	breakfast/lunch/dinner	23
70	6	Karakol National Park -	Karakol city (4-5 hour hike).	<p>In the morning, we trek radially to Lake Ala-kol at an altitude of 3600m. 600-700 m wide, 2.3 km long; the path passes through the coniferous forests of the Karakol Gorge and climbs through a moraine edge to the lake. Return to the tent. Transfer to Karakol . Overnight in Karakol.</p>	Guesthouse	Breakfast/lunch (no dinner today)	23
71	7	Karakol	Bishkek	<p>Morning city tour of Karakol. Visit the wooden Russian Orthodox Church and Dungan Mosque. Transfer to Bishkek (400 km) along the southern shore of Lake Issyk Kul. On the way, visit Skazka Gorge, a fantastic gorge with red mountains. You are guaranteed one of the best views of Issyk Kul Lake. Continue to Bishkek. Overnight at the hotel. End of the tour.</p>	3-4 star hotel in Bishkek	Breakfast/lunch/dinner	23
72	1	Bishkek city-Ala-Archa	Chon-Kemin ( 170km drive)	<p>After breakfast at the hotel in Bishkek, you will be met by our English speaking guide &nbsp;and we start our trip by visiting the Decrepit treasure of Kyrgyzstan, Ala-Archa National Park (40 km one way).</p>\r\n\r\n<p>It is a popular place for picnics, hiking, rock climbing and mountaineering. There are several walks suitable for different levels. In each of them you will be surrounded by magnificent nature. Return to Bishkek. Lunch at a local cafe.</p>\r\n\r\n<p>After lunch in Bishkek we will drive to Tokmok city to visit historical tower Burana. It used to be Balasagyn city. Dinner&nbsp; in guesthouse in Chon-Kemin .</p>\r\n\r\n<p>(Breakfast - hotel, Lunch - Local cafe, Dinner - guesthouse)</p>	Comfortable guesthouse	breakfast/lunch/dinner	25
73	2	Chon-Kemin	Son-kol lake (300 km drive)	<p>As its long way to drive, we will guesthouse just after early breakfast to Son-Kul lake</p>\r\n\r\n<p>Drive to Son-Kul via the Kalmak_Ashu pass (3340 m asl)</p>\r\n\r\n<p>The road is one of the most interesting places in Kyrgyzstan and shows the treasures of another type of Kyrgyzstan, the serpentine mountain road with spectacular breathtaking views.</p>\r\n\r\n<p>Lunch&nbsp; on the way</p>\r\n\r\n<p>With the arrival of his Son-Kul in the late afternoon &ndash; an indisputable treasure of Kyrgyzstan. We will stay here in yurt camps.</p>\r\n\r\n<p>In the region around the lake, Kyrgyzstan still lives in traditional simplicity, so it is ready to step into the life of nomads.</p>\r\n\r\n<p>Dinner and overnight stay at yurt camp.</p>\r\n\r\n<p>(Breakfast - guesthouse, Lunch-on the way, Dinner &ndash; yurt camp).</p>	yurt camp	Breakfast/lunch/dinner	25
74	3	Son-kul Lake.	\N	<p>After breakfast, drive towards Tash Rabat via the beautiful &quot;33 Parrots&quot; Pass (3133m asl) and the Town of Narin. Lunch at a local cafe in Naryn.</p>\r\n\r\n<p>In the afternoon, drive through the town to see the local Blue Mosque, which is on the list of the 10 most beautiful mosques in Central Asia (definitely Kyrgyzstan then go to the Ak-Bashi district and reach the Kara Koun Canyon, where we stopped for yurt camp&nbsp; accommodation.</p>\r\n\r\n<p>Here you will stay near one of the main archaeological sites, the Tash Rabat Karavan Saray, the next treasure of Kyrgyzstan. Karavan saray is an old and simple residence that was historically designed to house the great silk road merchants. Free time in the afternoon allows you to relax and explore the area. You can walk and ride horses in different ways, surrounded by amazing nature. Horse riding 3 hours.</p>\r\n\r\n<p>Dinner and overnight stay at yurt camp.</p>\r\n\r\n<p>(Breakfast &ndash; Yurt Camp, Lunch &ndash;on the way, Dinner -Yurt Camp)</p>	yurt camp	Breakfast/lunch/dinner	25
75	4	Son-kul Lake	Tash rabat Caravan Saray (250 km /5 hours)	<p>After breakfast, drive towards Tash Rabat via the beautiful &quot;33 Parrots&quot; Pass (3133m asl) and the Town of Narin. Lunch at a local cafe in Naryn.</p>\r\n\r\n<p>In the afternoon, drive through the town to see the local Blue Mosque, which is on the list of the 10 most beautiful mosques in Central Asia (definitely Kyrgyzstan then go to the Ak-Bashi district and reach the Kara Koun Canyon, where we stopped for yurt camp&nbsp; accommodation.</p>\r\n\r\n<p>Here you will stay near one of the main archaeological sites, the Tash Rabat Karavan Saray, the next treasure of Kyrgyzstan. Karavan saray is an old and simple residence that was historically designed to house the great silk road merchants. Free time in the afternoon allows you to relax and explore the area. You can walk and ride horses in different ways, surrounded by amazing nature. Horse riding 3 hours.</p>\r\n\r\n<p>Dinner and overnight stay at yurt camp.</p>	Yurt camp	breakfast/lunch/dinner	25
76	5	Tashrabat Karavan Saray	Lake Kel-Suu (230 km / 5 hours)	<p>After breakfast, drive &nbsp;for Lake Kel-suu, Kyrgyzstan&#39;s next treasure.</p>\r\n\r\n<p>Lunch (picnic) is on the way. The distance is relatively short, but road conditions delay arrival.</p>\r\n\r\n<p>I arrived in Kel-Suu in the afternoon. The camp will be set up upon your arrival, all the infrastructure is ready/ you will take the tent and be comfortable.</p>\r\n\r\n<p>Some free time in the evening to explore the area before dinner.</p>\r\n\r\n<p>The magnificent Lake Kel-suu, also remote by Kyrgyzstan standards, stretches for more than 10 km through a thin mountain pass near the Chinese border. It should be remembered that Kel Suu means &quot;incoming water&quot; in Kyrgyzstan, and in fact, the lake can disappear and flow into underground caves and caverns, so not everyone has the opportunity to see the lake.</p>\r\n\r\n<p>Dinner and overnight stay in the tent.</p>\r\n\r\n<p>(Breakfast - yurt camp, Lunch-picnic, Dinner -tent camp)</p>	Overnight in tents	breakfast/lunch/dinner	25
77	6	Lake Kel-Suu	Kochkor Town (230 km / 4-5 hours)	<p>A morning walk to the magical Kel-suu Lake. It takes about 2-3 hours to walk from the camp to the lake, so you can walk or drive (the difficulty is indicated only by the altitude (3200-3300m asl), the hiking terrain is not difficult, but you need suitable hiking boots). In the village of Ko&ccedil;hkor to visit the local women&#39;s associations, where they make different types of crafts, felt and carpets in a traditional style.&nbsp; After carpet the show, visit the shop museum of handicrafts. Free evening time before the dinner..</p>\r\n\r\n<p>Dinner and overnight stay in &nbsp;guest house.</p>\r\n\r\n<p>(Breakfast - Tent camp, Lunch &ndash;on the way in local cafe, Dinner &ndash; guest house)</p>	Guesthouse	Breakfast/lunch/dinner	25
78	7	Kochkor town	Bishkek  (230 km / 4-5 hours)	<p>After breakfast our journey continuous to Bishkek. After lunch Sightseeing in Bishkek, a city tour: Monument to the national Hero of Kyrgyzstan Manas, Kurmanjandatka Monument, Oak Park, Osh bazaar, Victory Square, dedicated to the Soviet heroes of the Second World War. Transfer to hotel in Bishkek. End of the tour after dinner.</p>\r\n\r\n<p>Dinner at a local restaurant.</p>	3-4 star hotel in Bishkek	Breakfast/lunch/dinner	25
80	2	Karakol	Karakol ski base	<p>After breakfast at the guest house, departure to the ski base &quot;Karakol&quot;. Check-in to an impressive gorge, climb to a panoramic view of the seemingly towering arrays of snowy mountains, multi-meter fir trees and floating clouds. Skiing. After the ski base, a short hike to the hot spring. The healing water of the spring reaches 50 degrees. Accessories for swimming are required. Guesthouse in Karakol city.<br />\r\nDinner at a local caf&eacute;.<br />\r\n<br />\r\n&nbsp;</p>	Guesthouse	Breakfast/Lunch/dinner	24
81	3	Karakol ski base	\N	<p>Breakfast at the guest house. Second day at the ski base.</p>\r\n\r\n<p>Skiing. After the ski base, a short hike to the hot spring. The healing water of the spring. Accessories for swimming are required. Lunch on the ski base. Dinner at a local caf&eacute;. Return to guesthouse in Karakol.</p>\r\n\r\n<p>&nbsp;</p>	Guesthouse	Breakfast/Lunch/dinner	24
82	4	Karakol	Bokonbaeva town (200 km)	<p>Breakfast at the guest house. Departure in the direction of Karakol - the southern shore of Issyk-Kul, 3-4 hours journey.<br />\r\nCheck-in to the mysterious Barskoon Gorge and Djety-Oguz gorge. &nbsp;Walk through ( if the weather suitable for it) the forest with sprawling Tien Shan fir trees to two waterfalls with thundering water and rainbows of spray. Lunch on the way.&nbsp;</p>\r\n\r\n<p>Check-in at the fancy canyon &ldquo;Fairy Tale&quot;. Walk along the inviting peaks and narrow paths of a mysterious location.</p>\r\n\r\n<p>Accommodation for rest in a cozy guest house in the village of Bokonbayevo.</p>	Guesthouse	breakfast/lunch/dinner	24
84	1	Bishkek city	Shamsi Gorge	<p>Transfer from Bishkek to Shamsi Gorge (130 km / 2.5 hours).</p>\r\n\r\n<p>&nbsp;On this day, travel 130 km from Bishkek to Shamsi Gorge. Arrive at the fence where guided horses are waiting for you. From here, you drive the horses to the Tuurakain &nbsp;valley where you will have lunch. After lunch, relax and enjoy a walk or horseback ride through the forest. Dinner and evening on tour basis.</p>\r\n\r\n<p>&nbsp;</p>	Tour basis	Lunch/dinner	17
85	2	Shamsi Gorge	Horse track day in Shamsi Gorge	<p>Horse track day in Shamsi Gorge</p>\r\n\r\n<p>&nbsp;After breakfast, head to the Shamsi Valley on horseback. Cross a low pass and descend to the river. Ride along the river to your destination, the Shah&#39;s house. Riding time: 6-7 hours. Overnight in tents at 2000 m altitude.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>	Overnight in tents or shelter	Breakfast/lunch/dinner	17
86	3	Shamsi gorge	Bishkek ( 130 km drive)	<p>Free time after breakfast. Then descent to the vehicle on horseback. Riding time: 4-5 hours. Return to Bishkek by car. On the way visit the historical and archaeological complex Burana Tower (minaret) Historians and archaeologists have proven that the settlement was the capital of the Karakanid Khanate and was once called Balasagun. Balasagun was built in the mid-10th century and today Burana&#39;s Tower is the central monument of the complex. Return to Bishkek to the hotel. End of the program.</p>\r\n\r\n<p>&nbsp;</p>	3-4 star hotel in Bishkek	Breakfast/lunch (no dinner today)	17
87	5	Bokonbaeva	Bishkek	<p>Breakfast at the guest house. Craft shyrdak show for the production of carpets from healthy felt.</p>\r\n\r\n<p>Departure in the direction of the Southern shore of Issyk-Kul - Bishkek, 250 km,</p>\r\n\r\n<p>4-5 hours of travel. Arrival in the realm of breezes and breezes - Aeolian canyon Konorchek.</p>\r\n\r\n<p>A short walk along the tops of petrified embankments and dried riverbeds from heavy rains.</p>\r\n\r\n<p>Arrival in Bishkek to the hotel. End of the tour.</p>	3-4 star hotel in Bishkek	Breakfast/Lunch/dinner	24
88	1	Bishkek city	Arrival	<p>Arrival in Bishkek. You will be met by your Tour driver and transferred to your hotel.14:00 Check in. Meet your guide and tour the capital of Kyrgyzstan. Kyrgyz National Philharmonic, Manas Statue, Oak Park, Alatu Square, Victory Square, Museums, Osh Market etc. Overnight at the hotel.</p>	3-4 star hotel in Bishkek	Breakfast/lunch/dinner	26
89	2	Bishkek - Burana	Cholpon Ata.	<p>Breakfast. Depart Bishkek at 08:00. First, stop at Burana Tower, which remains in the ancient city of Balasagun (11th-13th century). After visiting Burana Tower we will watch the Kyrgyz national sport Urak Tartish (goat pulling). Urak Tartish (or Kok Bol) is a competition between two horsemen on a goat carcass. Lunch on the way</p>\r\n\r\n<p>Transfer to Cholpon Ata. Dinner at a hotel near Issyk Kul Lake.</p>	Hotel near Issyk Kul Lake.	Breakfast/lunch/dinner	26
90	3	Cholpon Ata -	Karakol	<p>Transfer to Karakol. En route, stop at the open-air petroglyph museum in Cholpon Ata. Said to date from 500 BC - 100 AD, these petroglyphs depict wolves, long-horned mountain goats, goats, horses, snow leopards, sacrifices and hunting scenes. A museum on local folklore can also be visited.</p>\r\n\r\n<p>Karakol. Karakol city tour: Visit the Prezhevalsky Museum, the wooden Orthodox Church and the Chinese-style Dungan Mosque. Kyrgyzstan is a multi-ethnic country and on this tour, you will be exposed to many different countries and cultures. Today you will have dinner in a Uyghur or Dungan home listening to Kyrgyz folk music and songs. These ethnic groups came to Kyrgyzstan from China and have been living in Karakol since 1869. &nbsp;Overnight in a guesthouse.</p>	Guesthouse	Breakfast/lunch/dinner	26
91	4	Karakol-Jeti Oguz	Kochkor	<p>Travel along the southern shore of Lake Issyk-Kul to Kochkor. On the way, visit the Jeti Oguz gorge. Your guide will tell you about the legends surrounding Jeti Oguz (seven bulls) and the Broken Heart Rock. After lunch, transfer to Bokombaevo to watch an eagle hunting show. Continue to Kochkor. You are guaranteed the best view of Lake Issyk-Kul. Dinner at a Kyrgyz family house. Overnight in a guesthouse.<br />\r\nMeals: breakfast/lunch/dinner.<br />\r\n&nbsp;</p>	Guesthouse	breakfast/lunch/dinner	26
92	5	Kochkor	Son-Kul	<p>After breakfast visit a felt carpet workshop in Kochkor. Observe the production process of Kyrgyz felt carpets.<br />\r\nTransfer to Son-kol (120 km). Sonkol is one of the highest lakes in Kyrgyzstan (3016 m above sea level). This is a place where you can experience nomadic life. You can ride horses, see edelweiss flowers, camels, yaks and golden eagles and watch local women making Kyrgyzstan&#39;s national drink kimyz (mare&#39;s milk). This is a remote mountain lake located on a high treeless plateau where shepherds bring their animals in summer, set up camp and build yurts to live in. Hundreds of herds of livestock and various yurts can be seen in this spectacular place. Dinner in the evening. Overnight at the yurt camp.<br />\r\n<br />\r\n&nbsp;</p>	Yurt camp	Breakfast/lunch/dinner	26
93	6	Sonkol	Bishkek.	<p>Early morning transfer to Bishkek (400 km). Arrival in Bishkek. Farewell dinner accompanied by Kyrgyz folk dances. Overnight at the hotel.</p>	3-4 star hotel in Bishkek	Breakfast/lunch/dinner	26
94	7	Bishkek	Airport	<p>Transfer to the airport (30 km), departure. End of small group tour of Kyrgyzstan.<br />\r\nMeals: breakfast.<br />\r\n&nbsp;</p>	\N	\N	26
95	1	Bishkek city	Chon-Kemin ( 170km drive)	<p>After breakfast departure to Chon-Kemin valley from hotel. On the way visit Ala-Archa gorge, which is very suitable for hiking in unusually beauty of mountain, which will take about 1 hour.&nbsp; Lunch on the way to Chon-Kemin gorge where horses&nbsp; will wait for you to do horse riding for 2 hours. Dinner in guesthouse.</p>\r\n\r\n<p>&nbsp;</p>	Comfortable guesthouse	Breakfast/lunch/dinner	27
96	2	Chon-Kemin	Karakol city. (270 km )	<p>From guesthouse, after breakfast we will drive to Karakol city in Issyk-kul region. On the way, visit open air Petroglyph Museum in Cholpon Ata. &nbsp;A treasure trove of ancient art of the Turkic peoples. At the Cholpon Ata Petroglyph Museum, visitors can see hunting scenes, animal fights, hunters, symbolic lines and geometric shapes. See Issyk-Kul lake, which is a closed lake in Kyrgyzstan. It is one of the 30 largest lakes in the world in terms of area and the seventh deepest in the world. And in Karakol city sightseeing places like:&nbsp; Chinese-style wooden mosque, The Church of the Holy Trinity, Pier - Przewalsk is a place of historical significance in the immediate vicinity of the city of Karakol. It is home to the tomb of the world-renowned scientist, traveler and explorer Nikolai Mikhailovich Przewalski, as well as a museum dedicated to his explorations in Central Asia. Overnight in comfortable guesthouse or hotel.</p>	Guesthouse	Breakfast/lunch/dinner	27
97	3	Karakol	Altyn Arashan gorge (30km)	<p>The beautiful Altyn- Arashan Gorge is located in the valley of the Arashan River, 10 km east of the city of Karakol. One slope of the Golden Arashan gorge is covered with dense spruce forests, while the other slope is covered with a diverse carpet of wild plants, flowers, fruits and shrubs. Wildlife in the valley includes mountain goats, deer, bears, wild boar and marmots. You will reach guesthouse in Altyn-Arashan by hiking (walking) in 4-5 hours. Up there its opportunity to relax in hot spring pool. Free evening.&nbsp;</p>	Guesthouse in Altyn-Arashan Gorge	Breakfast/lunch/dinner	27
98	4	Altyn-Arashan	Ala-kol lake	<p><strong>Altyn-Arashan &ndash; Ala-kol lake</strong></p>\r\n\r\n<p>If weather is suitable to go to Ala-Kol lake,you will need do some distance by horse riding and some by hiking to reach this really amazing nature and just enjoy it. Lunch box today. Come back to guesthouse. overnight and dinner.</p>\r\n\r\n<p>&nbsp;</p>	Guesthouse	breakfast/lunch/dinner	27
99	5	Altyn-Arashan	Bokonbaeva town (200 km)	<p>After breakfast by walking go back to meet your driver. It takes 4-5 hours. Driver will take you to Bokonbaev town for overnight in guesthouse. on the way, you will visit Jety-Ogus valley and Skazka canyon.. Lunch on the way and&nbsp; dinner in local caf&eacute;.</p>	Guesthouse	Breakfast/lunch/dinner	27
100	6	Bokonbaeva	Bishkek (270 km)	<p>On the way to Bishkek, visit Burana Tower is a large minaret located in the Chui Valley in northern Kyrgyzstan. It is located near the town of Tokmok, about 70 km east of the capital Bishkek. The tower, together with grave markers, some earthworks and the remains of a fortress and three mausoleums, are the remains of the ancient city of Balasagun, founded by the Karahan dynasty at the end of the 9th century. Lunch in caf&eacute; on the way. Dinner and transfer to hotel. End of the tour and time to say bye, thanks for choosing us and etc.</p>	3-4 star hotel in Bishkek	Breakfast/lunch/dinner	27
101	1	Bishkek	\N	<p>After breakfast , Sights to visit: Oak Park, Ala-too Square, Philharmonic, Manas Statue, Victory Square. Osh bazaar. Sightseeing takes near 4-5 hours. Overnight at the hotel.</p>\r\n\r\n<p>&nbsp;</p>	3-4 star hotel in Bishkek	Breakfast/lunch/dinner	22
102	2	Bishkek	Karakol town. (400  km )	<p>Morning travel to Karakol, south of Issyk-Kul (400 km). On the way, visit Burana Tower, which remains from the ancient city of Balasagin (XI-XIII).On the way, visit Skazka Gorge, a fantastic gorge with red mountains. You are guaranteed the best view of Issyk Kul Lake. To Karakol. Overnight in a guesthouse or hotel in Karakol.</p>	Guesthouse	Breakfast/lunch/dinner	22
103	3	Karakol town	Karakol Gorge - Sirota Camp (3-4 hours trek).	<p>Meet trekking staff early in the morning and transfer buses to 4WD Russian military vehicles (UAZIK). The 4WD military truck then heads south along Karakol Gorge on an exciting mountain trail winding through fur tree forests and the stunning rock formations of Karakol Gorge. The next stage is a trek through the fur tree forest along the Ala Kul valley. Dinner and overnight in tents at Sirota Camp (2800 m altitude).</p>	Tents	Breakfast/lunch/dinner	22
104	4	Sirota Camp	Ala Kul Lake - Keldike Valley (5-6 hour hike).	<p>After breakfast, continue hiking in the valley, gradually gaining altitude. Ala-kol Lake is passed. Lunch at the lake. The lake is at an altitude of 3532 meters. The 2.3 km long and 700 meters wide lake is fed by melting glaciers and has a beautiful waterfall on the other side.</p>\r\n\r\n<p>Today we cross the Ala Kul Pass (3860 meters above sea level) and descend to the Keldike Gorge. Dinner and overnight in tents in Keldike Valley (3200m).</p>	Tents	breakfast/lunch/dinner	22
105	5	Keldike Valley	Altyn-Alarshan (3-4 hour hike)	<p>Morning hike to Altin Alarshan valley. &#39;Altin Alarshan&#39; means &#39;Golden Spring&#39; in Kyrgyz and is famous for its natural sulphur springs. Free time to rest or visit the hot springs. Dinner and overnight in tents (altitude 2600 m).</p>	Tents	Breakfast/lunch/dinner	22
106	6	Altin Ararshan	Karakol	<p>After breakfast meeting with the vehicle. Drive to Kara-kol on a magnificent mountain road. &nbsp;Visit the wooden Russian Orthodox Church, Dungan Mosque and Prezhevalsky Museum. Overnight at the guesthouse in Kara-kol</p>	Guesthouse	Breakfast/lunch/dinner	22
107	7	Karakol	Bishkek	<p>After breakfast long drive to Bishkek. In Cholpon Ata, visit the stone open-air museum, said to date from 500 BC to 100 AD and depicting wolves, long-horned mountain goats, goats, horses, snow leopards, sacrifices and hunting scenes. Overnight at the hotel.</p>	3-4 star hotel in Bishkek	Breakfast/lunch/dinner	22
108	1	Bishkek city	Kochkor town(250 km, 3-4 hours drive)	<p>Arrival in Bishkek early in the morning. Meeting at the airport by a local driver. Breakfast. Transfer to Kochkor. Drive to Kochkor village. Kochkor is a village surrounded by mountains and big hills. On the way visit the old town of Balasagun. This city was founded by the Karachanid Khaganat. It was the Karachanid Khaganat that spread Islam in Kyrgyzstan. Visit the Burana Tower. It was built in the 10th-11th centuries. The original height of the tower was at least 40 meters, but the upper part was destroyed by an earthquake. Currently, the tower is 21.7 meters high.</p>\r\n\r\n<p>If you wish, you can visit the women&#39;s cooperative &quot;Altin Kol&quot; (&quot;Golden Hand&quot;). Here you can attend felt making workshops and purchase beautiful felt handicrafts from local artists. Dinner at the guest house in Kochkor.</p>\r\n\r\n<p>Altitude during the day: 1606 m in Tamga and 1800 m in Kochkor.</p>\r\n\r\n<p>Meals Breakfast/lunch/dinner.</p>	Comfortable guesthouse	Breakfast/Lunch/dinner	28
109	2	Kochkor	Son-kul (150 km, 3-4 hours drive).	<p>Breakfast at the guest house. Then transfer to Son-Kul lake (Son-Kul). Mountain lake at an altitude of 3016 meters above sea level. Nomads spend their summers on jailoo (pastures) and graze their livestock. Herds of sheep and horses may also be encountered. Lunch in a yurt camp. Overnight in yurts (yurts are traditional nomadic dwellings). Taste kymyz (mare&#39;s milk) and watch the shepherd&#39;s wife making bread and cheese. Dinner with freshly baked bread and overnight in a yurt camp.</p>\r\n\r\n<p>Day altitude of 1800m at Kochkor and 3030m at Son-kul Lake.</p>	yurt camp	Breakfast/lunch/dinner	28
110	3	Son-Kul.	\N	<p>Breakfast. You will spend the whole day in Son-Kul. Here you will have a mountain hike, meet local shepherds and observe the pastoral life. You will also be able to milk a mare and see how nomads live. There are various hiking trails in Son-kul. There are no special hiking trails here. You can do a self-guided walk, which can take anywhere from one to five or six hours. If you want to walk all day, lunches can be provided. Horseback riding can be arranged for those who wish to do a horseback ride during the day. This is available at an additional cost. We can have a local stable boy available for horseback riding. Overnight and dinner at the yurt camp.</p>	Yurt camp	Breakfast/lunch/dinner	28
111	4	Son-kul	Karakol (380 km, 6-7 h drive)	<p>After breakfast in a yurt transfer to Karakol. Drive along the northern shore of Lake Issyk-Kul. Located at an altitude of 1607 meters above sea level, it is the second largest mountain lake in the world. Despite being surrounded by mountains, the lake does not freeze in winter (hence the name). Optional boat trip on Lake Issyk-Kul.</p>\r\n\r\n<p>Arrival in Karakol and accommodation in a family guest house. Dinner. Overnight stay.</p>\r\n\r\n<p>Day altitude: 3030 m in Sonkur, 1760 m in Karakol.</p>	Guesthouse	Breakfast/lunch/dinner	28
112	5	Karakol	Jety-Oguz (40 km, about 1 hour drive).	<p>If Arrive in Karakol on Sunday and visit the Sunday animal market. This popular event in the region is held once a week. It starts very early. We arrive here before breakfast.</p>\r\n\r\n<p>After breakfast &nbsp;visit a Russian Orthodox church, a Muslim mosque and the Prjevalsky Museum.</p>\r\n\r\n<p>In the afternoon we go to Jety-Oguz gorge, famous for its red rocks.</p>\r\n\r\n<p>Dinner.</p>\r\n\r\n<p>Pass day: Karakol 1760 m, Jeti-Oguz 2200 m.</p>	Yurt camp	Breakfast/lunch/dinner	28
113	6	Jety-Oguz	Svetlaya Polyana - Tamga.	<p>Jety-Oguz - Svetlaya Polyana - Tamga.</p>\r\n\r\n<p>Breakfast in yurt. Start trekking to Svetlaya Polyana, 3-4 hours. Arrival to Tamga, overnight in yurt camp near the lake. Swimming in the lake is possible. There is also a wild beach here. Dinner in the yurt camp.</p>\r\n\r\n<p>Altitude above sea level during the day: 2020 m in Jety-Oguz and 1606 m in Tamga.</p>	Yurt camp	Breakfast/lunch/dinner	28
114	7	Tamga.	\N	<p>All day to enjoy Lake Issyk-Kul. The campsite is only 150 meters away from the lake. You will live in yurts like nomads. Meals are served in a separate yurt. Before dinner you can admire the unforgettable sunset and beautiful starry sky. Tamga village is located on the main route of the Silk Road. As you know, this famous Silk Road transported not only goods but also religion. Stones with Buddhist inscriptions were found in one of the valleys of Tamga, which is why the village was named &quot;Tamga&quot;, which means &quot;writing&quot;. There are several optional activities and sightseeing on these days:</p>\r\n\r\n<p>1. visit to Baarskoon Gorge and Baarskoon Waterfall. Easy hike through the gorge and to the waterfall.</p>\r\n\r\n<p>2. in the Tamga valley, where you can see old Buddhist inscriptions carved on stone.</p>\r\n\r\n<p>Dinner and overnight stay in yurt camp.</p>\r\n\r\n<p>Afternoon altitude 1606 above sea level in Tamga.</p>	Tamga	Breakfast/lunch/dinner	28
115	8	Tamga	Bishkek (330 km, 5-6 hours drive).	<p>&nbsp;</p>\r\n\r\n<p>After breakfast transfer to Bishkek. Visit to the &quot;fairy-tale&quot; valley. Walking along the sand hills, your imagination will turn over from the different colors and shapes created by the sand. You will see many different elements.</p>\r\n\r\n<p>If you wish, you can make a stop at Kyzyl Tuu. Here local artisans make wooden parts of yurts. Local craftsmen will teach you how to make wooden yurt parts with your own hands.</p>\r\n\r\n<p>Arrival in Bishkek and overnight stay in a hotel. Dinner and overnight stay.</p>\r\n\r\n<p>Altitude during the day: 1606 m in Tamga, 800 m in Bishkek.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>	3-4 star hotel in Bishkek	Breakfast/lunch/dinner	28
116	9	\N	\N	<p>Free time in Bishkek. Hotels are already booked. You can explore Bishkek on your own or use the services of a guide. Overnight at the hotel.</p>\r\n\r\n<p>Optinal for extra pay-Shooting practice with real guns, sniper or pistol.</p>\r\n\r\n<p>Day altitude: 1606 m at Tamug, 800 m at Bishkek.</p>	Bishkek  3-4 star hotel.	Breakfast/lunch/	28
117	1	Airport - Bishkek	\N	<p>Airport - Bishkek</p>\r\n\r\n<p>Highlights.</p>\r\n\r\n<p>- Capital of Kyrgyzstan;</p>\r\n\r\n<p>- Osh Bazaar, a traditional oriental market;</p>\r\n\r\n<p>- Ala-Too Square with its unique historical buildings.</p>\r\n\r\n<p>Arrival at Manas International Airport, meeting with guide and driver and transfer to Bishkek. Check-in to the hotel . After a short break visit the famous Osh Bazaar.&nbsp; Visit Ala-Too Square, a heritage site of the Soviet Union. Around the square are the Manas monument dedicated to the national hero of Kyrgyzstan, a huge flag of Kyrgyzstan, the changing of the guard ceremony, the monument to the Kyrgyz Revolution of 2010, the White House, the statue of Lenin, many historical buildings, the Oak Park with a small open-air museum, a unique art gallery, and the Kurmanjan Datka Memorial Complex. Monument to Kurmanjan Datka, etc. The sightseeing tour of Bishkek ends with a visit to Victory Square, dedicated to the heroes of the Great Patriotic War. Lunch and dinner in one of the local cafes. Overnight at the hotel.</p>\r\n\r\n<p>Sightseeing time: 2-3 hours.</p>	3-4 star hotel in Bishkek	Breakfast/lunch/dinner	29
118	2	Bishkek	Son-Kul lake	<p>Bishkek &ndash; Son-kul Lake</p>\r\n\r\n<p>Highlights.</p>\r\n\r\n<p>- One of the oldest preserved minarets in Central Asia;</p>\r\n\r\n<p>- Second largest lake in Kyrgyzstan.</p>\r\n\r\n<p>In the morning transfer to Son-kul Lake (390 km, 8-9 h). On the way stop at Burana Tower near Tokmok. Burana is a minaret of Balasagun city, which was the capital of Karakhanid state in XII century. There is also a collection of balbars - stone statues of ancient Turks. Lunch &nbsp;in Tokmok . In the afternoon visit to Lake Son-kul, the second largest mountain lake in Kyrgyzstan. Upon arrival - overnight stay in a yurt camp. 3100 m above sea level.</p>\r\n\r\n<p>Distance 390 km.</p>\r\n\r\n<p>Duration 8-9 hours.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>	Yurt camp	Breakfast/lunch/dinner	29
119	3	Full day at Son Kul Lake	\N	<p>&nbsp;An opportunity to get acquainted with the life of nomads.</p>\r\n\r\n<p>On Lake Son-kul the Kyrgyz still live in traditional for Central Asia nomadic tents - yurts. Yurts are built from wooden beams and layers of felt. They are quick to build and are a practical option for nomads. They can self-organize horseback tours, hike and spend time with friendly Kyrgyz families. Try homemade foods such as ayran (yogurt) and the national drink kimis (fermented mare&#39;s milk). After lunch and dinner, overnight at Yurt Camp (altitude 3100 meters).</p>\r\n\r\n<p>&nbsp;</p>	yurt camp	Breakfast/lunch/dinner	29
120	4	Son-kul Lake	Karakol (Drive 350 km)	<p>- Old town built by Cossacks;</p>\r\n\r\n<p>- Lake Issyk-Kul, the pearl of Kyrgyzstan.</p>\r\n\r\n<p>In the morning transfer to the town of Karakol on the southern shore of Lake Issyk-Kul. Lunch in a Kyrgyz house in the village of Bokonbaev, then a walk along the Tale Canyon reflecting in the dark blue Issyk-Kul Lake. Further transfer will take a few hours to reach Karakol. Upon arrival dinner in a local cafe and overnight stay in a hotel (1700 m).</p>\r\n\r\n<p>Duration 7-8 hours.</p>	Guesthouse	Breakfast/lunch/dinner	29
121	5	Karakol	Karakol Gorge (Drive 25 km)	<p>- Tour of the main historical sights of Karakol;</p>\r\n\r\n<p>- Overnight stay in tents.</p>\r\n\r\n<p>Morning transfer to 12 km from Karakol. Start of the tour at the memorial to the famous Russian explorer of the Asian continent Nikolay Prjevalsky. Return to Karakol and visit the unique Dungan Mosque, built in the style of Chinese pagoda. Then you will go to the Church of the Holy Trinity, famous for its miracle-working icon, painted in 1897. After sightseeing, lunch at a local cafe. Meeting with mountain guide and porters and departure by military truck to Karakol gorge. Dinner in tent camp (2500 m).</p>\r\n\r\n<p>Sightseeing time: 1 hour</p>	Overnight in tents	Breakfast/lunch/dinner	29
122	6	Radial hike to Karakol Peak (5216 m)	\N	<p>- Mountain bath in tent camp.</p>\r\n\r\n<p>Radial hike to the foot of Karakol Peak (16 km). Follow an old dirt road that runs along the Uyun-Tor River and ends at a small river. After crossing the river, the trail passes through a forest of Tian shan blue spruce trees. (Snowdrops, tulips, primroses, white anemones, alpine asters and large edelweiss bloom here in June). After the forest, we climb a rocky hill to reach a point overlooking Karakol Peak, the highest peak in Terskei Ala Too. After lunch and enjoying the stunning views, we return to the tented camp along the same route. Dinner at the tent camp (2500 m).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Climbing time: 6-7 hours.</p>	Overnight in tents	Breakfast/lunch/dinner	29
123	7	karakol Gorge	Lake Ala-kul	<p>- The majestic Ala Kul Lake;</p>\r\n\r\n<p>- The highest overnight stop on this trip.</p>\r\n\r\n<p>After breakfast descend 1 km along the valley and eventually cross the river on a bridge. Follow the trail through the forest. It ends with a steep, grass-covered climb. The path crosses a mighty river and reaches a fairytale log cabin called Sirota. Inside there are tables, benches and a fireplace, and the wooden walls are carved with many carvings of animals and idols. After resting and having a drink, continue on the trail, leave the forest behind and walk along the river to reach a beautiful waterfall that cascades down Ala Kul Lake (10 km). Cross the waterfall and ascend to a natural dam from where the lake can be seen. The last kilometer to Tent Camp follows the lake. Dinner and overnight at the Tent Camp (3600 m).</p>\r\n\r\n<p>Hiking time: 6-7 hours.</p>	Overnight in tents	Breakfast/lunch/dinner	29
124	8	Ala Kul Lake	Altyn Arashan Valley	<p>- Natural hot springs;</p>\r\n\r\n<p>- The highest pass of the trip.</p>\r\n\r\n<p>Lake Ala Kul (meaning &#39;colored lake&#39; in Kyrgyz) stretches 2.8 km from east to west, is 500 m wide and 70 m deep. The color of the water changes according to the light and can be emerald green, turquoise with white clouds, light green, dark gray and even black. After breakfast we start climbing up Ala Kul Pass and enjoy the spectacular view of the lake along the way. As we get closer to the lake, the main mountain range of Terskey Ala Too is revealed, including the peaks of Ak-Suu, Jigit, Karakol and Oguz Bashi. It takes another hour and a half to reach the pass by the lake. From the pass, you descend along the cliff slopes and then cross the wide and picturesque Keldike valley with its herds of grazing cattle and sheep. On arrival at the tented camp, relax in the hot springs of the valley (maximum temperature 50&deg;C) in the town of Altin Arashan. Dinner and overnight at the tented camp (altitude 2600 m).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hiking time: 6-7 hours.</p>	Overnight in tents	Breakfast/lunch/dinner	29
125	9	Altyn Arashan Gorge	Cholpon-Ata  (190 km. drive)	<p>- Transfer by special military truck to Karakol;</p>\r\n\r\n<p>- Overnight stay on the shore of the largest lake in Kyrgyzstan.</p>\r\n\r\n<p>Besides the famous mineral springs, Artyn Arashan has wooden huts located in the steppe along the Arashan River. The river bank is covered with fir trees, and their dark green shade looks very picturesque in the morning against the background of snow-capped mountains (altitude 5022 meters above sea level). After breakfast a military truck picks you up from the tent camp. We drive along the valley towards Karakol. The descent passes through green fields full of flowers and mountain springs. The last 5 km of the gorge is less than 30 meters wide with high rock walls. At the entrance to the valley is the village of Ak-Suu (the name comes from the hot springs). Here you transfer to a car and drive to Karakol. After lunch in a local cafe transfer to the city of Cholpon-Ata. Upon arrival check-in to the hotel on the northern shore of Lake Issyk-Kul. After dinner overnight in the hotel (altitude 1600 m).Travel time: 4-5 hours.</p>	Hotel in Issyk-Kul	Breakfast/lunch/dinner	29
126	10	Cholpon-Ata	Bishkek (Drive: 270 km.)	<p>Main sights.</p>\r\n\r\n<p>- Scythian petroglyphs in the vicinity of Cholpon-Ata;</p>\r\n\r\n<p>- Beautiful Boom Gorge.</p>\r\n\r\n<p>In the morning return to Bishkek. On the way visit the Scythian open-air temple &quot;Stone Garden&quot;, also known as the petroglyphs of Cholpon-Ata, dating from the 9th-8th century BC and the 3rd-4th century AD. The petroglyphs are located at the foot of the Kungoy Ala-Too mountain range and offer a beautiful view of the entire lake. Transfer through the Boom Gorge to Bishkek, stopping for lunch on the way. Arrival in the capital and check-in to the hotel. Last dinner in a cafe. Overnight in Bishkek. Free diner</p>\r\n\r\n<p>Excursion time 3-4 hours.</p>	3-4 star hotel in Bishkek	Breakfast/lunch/dinner	29
127	11	Bishkek	Airport	<p><span style="color:#0563c1"><u><a href="https://www.advantour.com/kyrgyzstan/tours/mountains-lakes-of-tian-shan-trekking-tour.htm#tourday11" style="color:#0563c1; text-decoration:underline">&nbsp;</a></u></span>Early in the morning, transfer to the airport for your departure flight. End of Mountains and Lakes of Tian Shan Trekking Tour.<br />\r\n&nbsp;</p>	\N	breakfast	29
\.


--
-- Data for Name: tours_slider; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.tours_slider (id, title, subtitle, img, is_active, tour_id, lang) FROM stdin;
17	Food in Kyrgyzstan	\N	slider/imgonline-com-ua-Resize-cGZjWWxFTwMJVDtU.jpg	t	11	en
12	Jety-Oguz	\N	slider/imgonline-com-ua-Resize-jPX0rZBCM5of.jpg	t	20	en
19	Sunset in Son-Kol	\N	slider/IMG_4265.JPG	t	14	en
18	Shepherd Yurt	Yurt (booz uy)-National ancient Kyrgyz house	slider/imgonline-com-ua-Resize-5I3zr4vrNF5Xeg4.jpg	t	19	en
8	Son-Kol	\N	slider/imgonline-com-ua-Resize-NIsMYsamQCYgIR.jpg	t	18	en
\.


--
-- Data for Name: tours_tourrequest; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.tours_tourrequest (id, status, first_name, last_name, email, phone, comment, created_at, price_id, tour_id) FROM stdin;
\.


--
-- Data for Name: tours_tourreviews; Type: TABLE DATA; Schema: public; Owner: chyngyz
--

COPY public.tours_tourreviews (id, status, rating, date, name, email, comment, date_created, tour_id) FROM stdin;
\.


--
-- Name: account_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.account_user_groups_id_seq', 1, false);


--
-- Name: account_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.account_user_id_seq', 1, true);


--
-- Name: account_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.account_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 192, true);


--
-- Name: car_rent_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.car_rent_brand_id_seq', 9, true);


--
-- Name: car_rent_car_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.car_rent_car_id_seq', 9, true);


--
-- Name: car_rent_carrentalrequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.car_rent_carrentalrequest_id_seq', 181, true);


--
-- Name: car_rent_cartype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.car_rent_cartype_id_seq', 4, true);


--
-- Name: car_rent_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.car_rent_images_id_seq', 11, true);


--
-- Name: car_rent_prices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.car_rent_prices_id_seq', 9, true);


--
-- Name: clients_answer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.clients_answer_id_seq', 1, false);


--
-- Name: clients_faq_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.clients_faq_id_seq', 1, false);


--
-- Name: clients_feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.clients_feedback_id_seq', 1, false);


--
-- Name: clients_information_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.clients_information_id_seq', 1, false);


--
-- Name: clients_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.clients_requests_id_seq', 1, false);


--
-- Name: clients_sitereviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.clients_sitereviews_id_seq', 5, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1112, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 48, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 108, true);


--
-- Name: lead_leadtraveler_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.lead_leadtraveler_id_seq', 25, true);


--
-- Name: lead_travelers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.lead_travelers_id_seq', 66, true);


--
-- Name: main_accommodation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_accommodation_id_seq', 2, true);


--
-- Name: main_answer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_answer_id_seq', 1, false);


--
-- Name: main_articlecats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_articlecats_id_seq', 9, true);


--
-- Name: main_articleimages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_articleimages_id_seq', 1, false);


--
-- Name: main_articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_articles_id_seq', 75, true);


--
-- Name: main_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_categories_id_seq', 2, true);


--
-- Name: main_createowntour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_createowntour_id_seq', 1, false);


--
-- Name: main_createowntourrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_createowntourrec_id_seq', 6, true);


--
-- Name: main_faq_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_faq_id_seq', 1, true);


--
-- Name: main_gallery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_gallery_id_seq', 3, true);


--
-- Name: main_galleryimages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_galleryimages_id_seq', 5, true);


--
-- Name: main_information_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_information_id_seq', 1, false);


--
-- Name: main_meals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_meals_id_seq', 2, true);


--
-- Name: main_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_requests_id_seq', 1, false);


--
-- Name: main_sitereviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_sitereviews_id_seq', 1, false);


--
-- Name: main_transport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.main_transport_id_seq', 2, true);


--
-- Name: tours_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.tours_category_id_seq', 26, true);


--
-- Name: tours_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.tours_images_id_seq', 101, true);


--
-- Name: tours_prices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.tours_prices_id_seq', 61, true);


--
-- Name: tours_route_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.tours_route_id_seq', 127, true);


--
-- Name: tours_slider_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.tours_slider_id_seq', 19, true);


--
-- Name: tours_tour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.tours_tour_id_seq', 30, true);


--
-- Name: tours_tourrequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.tours_tourrequest_id_seq', 4, true);


--
-- Name: tours_tourreviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chyngyz
--

SELECT pg_catalog.setval('public.tours_tourreviews_id_seq', 9, true);


--
-- PostgreSQL database dump complete
--

