--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.2 (Debian 14.2-1.pgdg110+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: exercises; Type: TABLE; Schema: public; Owner: workouts
--

CREATE TABLE public.exercises (
    id integer NOT NULL,
    body_part character varying(100) NOT NULL,
    equipment character varying(100) NOT NULL,
    gif_url character varying(200) NOT NULL,
    name character varying(200) NOT NULL,
    target character varying(100) NOT NULL,
    intensity integer NOT NULL,
    length_of_workout integer NOT NULL
);


ALTER TABLE public.exercises OWNER TO workouts;

--
-- Name: exercises_id_seq; Type: SEQUENCE; Schema: public; Owner: workouts
--

CREATE SEQUENCE public.exercises_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exercises_id_seq OWNER TO workouts;

--
-- Name: exercises_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: workouts
--

ALTER SEQUENCE public.exercises_id_seq OWNED BY public.exercises.id;


--
-- Name: exercises id; Type: DEFAULT; Schema: public; Owner: workouts
--

ALTER TABLE ONLY public.exercises ALTER COLUMN id SET DEFAULT nextval('public.exercises_id_seq'::regclass);


--
-- Data for Name: exercises; Type: TABLE DATA; Schema: public; Owner: workouts
--

COPY public.exercises (id, body_part, equipment, gif_url, name, target, intensity, length_of_workout) FROM stdin;
1	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0001.gif	3/4 sit-up	abs	1	30
2	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0002.gif	45° side bend	abs	9	15
3	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0003.gif	air bike	abs	6	15
1512	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1512.gif	all fours squad stretch	quads	4	25
6	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0006.gif	alternate heel touchers	abs	4	5
7	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0007.gif	alternate lateral pulldown	lats	9	5
1368	lower legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1368.gif	ankle circles	calves	8	20
3293	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3293.gif	archer pull up	lats	1	20
3294	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/3294.gif	archer push up	pectorals	1	25
2355	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/2355.gif	arm slingers hanging bent knee legs	abs	4	15
2333	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/2333.gif	arm slingers hanging straight legs	abs	7	10
3214	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3214.gif	arms apart circular toe touch (male)	glutes	6	15
3204	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3204.gif	arms overhead full sit-up (male)	abs	6	10
9	chest	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0009.gif	assisted chest dip (kneeling)	pectorals	10	10
11	waist	assisted	http://d205bpvrqc9yn1.cloudfront.net/0011.gif	assisted hanging knee raise	abs	3	25
10	waist	assisted	http://d205bpvrqc9yn1.cloudfront.net/0010.gif	assisted hanging knee raise with throw down	abs	8	10
1708	lower legs	assisted	http://d205bpvrqc9yn1.cloudfront.net/1708.gif	assisted lying calves stretch	calves	8	5
1709	upper legs	assisted	http://d205bpvrqc9yn1.cloudfront.net/1709.gif	assisted lying glutes stretch	glutes	7	25
1710	upper legs	assisted	http://d205bpvrqc9yn1.cloudfront.net/1710.gif	assisted lying gluteus and piriformis stretch	glutes	4	10
12	waist	assisted	http://d205bpvrqc9yn1.cloudfront.net/0012.gif	assisted lying leg raise with lateral throw down	abs	5	30
13	waist	assisted	http://d205bpvrqc9yn1.cloudfront.net/0013.gif	assisted lying leg raise with throw down	abs	5	20
14	waist	medicine ball	http://d205bpvrqc9yn1.cloudfront.net/0014.gif	assisted motion russian twist	abs	2	5
15	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0015.gif	assisted parallel close grip pull-up	lats	2	10
16	upper legs	assisted	http://d205bpvrqc9yn1.cloudfront.net/0016.gif	assisted prone hamstring	hamstrings	4	20
1713	upper legs	assisted	http://d205bpvrqc9yn1.cloudfront.net/1713.gif	assisted prone lying quads stretch	quads	1	20
1714	waist	assisted	http://d205bpvrqc9yn1.cloudfront.net/1714.gif	assisted prone rectus femoris stretch	abs	4	25
17	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0017.gif	assisted pull-up	lats	4	25
1716	chest	assisted	http://d205bpvrqc9yn1.cloudfront.net/1716.gif	assisted seated pectoralis major stretch with stability ball	pectorals	8	10
1712	upper legs	assisted	http://d205bpvrqc9yn1.cloudfront.net/1712.gif	assisted side lying adductor stretch	adductors	10	15
1758	waist	assisted	http://d205bpvrqc9yn1.cloudfront.net/1758.gif	assisted sit-up	abs	1	10
1431	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1431.gif	assisted standing chin-up	lats	8	15
1432	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1432.gif	assisted standing pull-up	lats	6	25
18	upper arms	assisted	http://d205bpvrqc9yn1.cloudfront.net/0018.gif	assisted standing triceps extension (with towel)	triceps	10	25
19	upper arms	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0019.gif	assisted triceps dip (kneeling)	triceps	8	15
2364	chest	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/2364.gif	assisted wide-grip chest dip (kneeling)	pectorals	3	15
3220	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3220.gif	astride jumps (male)	cardiovascular system	6	10
3672	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3672.gif	back and forth step	cardiovascular system	4	20
1314	back	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1314.gif	back extension on exercise ball	spine	8	30
3297	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3297.gif	back lever	upper back	7	20
1405	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1405.gif	back pec stretch	lats	6	25
1473	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1473.gif	backward jump	quads	5	15
20	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0020.gif	balance board	quads	2	5
968	upper arms	band	http://d205bpvrqc9yn1.cloudfront.net/0968.gif	band alternating biceps curl	biceps	3	30
969	waist	band	http://d205bpvrqc9yn1.cloudfront.net/0969.gif	band alternating v-up	abs	2	10
970	back	band	http://d205bpvrqc9yn1.cloudfront.net/0970.gif	band assisted pull-up	lats	5	5
971	waist	band	http://d205bpvrqc9yn1.cloudfront.net/0971.gif	band assisted wheel rollerout	abs	4	10
1254	chest	band	http://d205bpvrqc9yn1.cloudfront.net/1254.gif	band bench press	pectorals	6	5
980	upper legs	band	http://d205bpvrqc9yn1.cloudfront.net/0980.gif	band bent-over hip extension	glutes	7	5
972	waist	band	http://d205bpvrqc9yn1.cloudfront.net/0972.gif	band bicycle crunch	abs	5	30
974	back	band	http://d205bpvrqc9yn1.cloudfront.net/0974.gif	band close-grip pulldown	lats	9	20
975	upper arms	band	http://d205bpvrqc9yn1.cloudfront.net/0975.gif	band close-grip push-up	triceps	5	15
976	upper arms	band	http://d205bpvrqc9yn1.cloudfront.net/0976.gif	band concentration curl	biceps	6	10
3117	back	band	http://d205bpvrqc9yn1.cloudfront.net/3117.gif	band fixed back close grip pulldown	lats	1	10
3116	back	band	http://d205bpvrqc9yn1.cloudfront.net/3116.gif	band fixed back underhand pulldown	lats	8	30
977	shoulders	band	http://d205bpvrqc9yn1.cloudfront.net/0977.gif	band front lateral raise	delts	9	15
978	shoulders	band	http://d205bpvrqc9yn1.cloudfront.net/0978.gif	band front raise	delts	6	30
1408	upper legs	band	http://d205bpvrqc9yn1.cloudfront.net/1408.gif	band hip lift	glutes	5	10
979	waist	band	http://d205bpvrqc9yn1.cloudfront.net/0979.gif	band horizontal pallof press	abs	10	5
981	waist	band	http://d205bpvrqc9yn1.cloudfront.net/0981.gif	band jack knife sit-up	abs	9	15
983	back	band	http://d205bpvrqc9yn1.cloudfront.net/0983.gif	band kneeling one arm pulldown	lats	5	15
985	waist	band	http://d205bpvrqc9yn1.cloudfront.net/0985.gif	band kneeling twisting crunch	abs	9	20
984	upper legs	band	http://d205bpvrqc9yn1.cloudfront.net/0984.gif	band lying hip internal rotation	glutes	6	15
1002	waist	band	http://d205bpvrqc9yn1.cloudfront.net/1002.gif	band lying straight leg raise	abs	10	15
986	upper arms	band	http://d205bpvrqc9yn1.cloudfront.net/0986.gif	band one arm overhead biceps curl	biceps	5	5
987	upper legs	band	http://d205bpvrqc9yn1.cloudfront.net/0987.gif	band one arm single leg split squat	quads	9	5
988	back	band	http://d205bpvrqc9yn1.cloudfront.net/0988.gif	band one arm standing low row	upper back	1	30
989	chest	band	http://d205bpvrqc9yn1.cloudfront.net/0989.gif	band one arm twisting chest press	pectorals	4	15
990	back	band	http://d205bpvrqc9yn1.cloudfront.net/0990.gif	band one arm twisting seated row	upper back	2	15
991	upper legs	band	http://d205bpvrqc9yn1.cloudfront.net/0991.gif	band pull through	glutes	9	30
992	waist	band	http://d205bpvrqc9yn1.cloudfront.net/0992.gif	band push sit-up	abs	8	10
993	shoulders	band	http://d205bpvrqc9yn1.cloudfront.net/0993.gif	band reverse fly	delts	3	25
994	lower arms	band	http://d205bpvrqc9yn1.cloudfront.net/0994.gif	band reverse wrist curl	forearms	8	15
996	upper legs	band	http://d205bpvrqc9yn1.cloudfront.net/0996.gif	band seated hip internal rotation	glutes	8	20
1011	waist	band	http://d205bpvrqc9yn1.cloudfront.net/1011.gif	band seated twist	abs	1	5
997	shoulders	band	http://d205bpvrqc9yn1.cloudfront.net/0997.gif	band shoulder press	delts	5	5
1018	back	band	http://d205bpvrqc9yn1.cloudfront.net/1018.gif	band shrug	traps	10	5
998	upper arms	band	http://d205bpvrqc9yn1.cloudfront.net/0998.gif	band side triceps extension	triceps	5	5
999	lower legs	band	http://d205bpvrqc9yn1.cloudfront.net/0999.gif	band single leg calf raise	calves	9	5
1000	lower legs	band	http://d205bpvrqc9yn1.cloudfront.net/1000.gif	band single leg reverse calf raise	calves	7	15
1001	upper legs	band	http://d205bpvrqc9yn1.cloudfront.net/1001.gif	band single leg split squat	quads	9	10
1004	upper legs	band	http://d205bpvrqc9yn1.cloudfront.net/1004.gif	band squat	glutes	7	25
1003	upper legs	band	http://d205bpvrqc9yn1.cloudfront.net/1003.gif	band squat row	glutes	6	25
1005	waist	band	http://d205bpvrqc9yn1.cloudfront.net/1005.gif	band standing crunch	abs	9	25
1022	shoulders	band	http://d205bpvrqc9yn1.cloudfront.net/1022.gif	band standing rear delt row	delts	4	20
1007	waist	band	http://d205bpvrqc9yn1.cloudfront.net/1007.gif	band standing twisting crunch	abs	9	20
1008	upper legs	band	http://d205bpvrqc9yn1.cloudfront.net/1008.gif	band step-up	glutes	5	15
1009	upper legs	band	http://d205bpvrqc9yn1.cloudfront.net/1009.gif	band stiff leg deadlift	glutes	1	10
1023	upper legs	band	http://d205bpvrqc9yn1.cloudfront.net/1023.gif	band straight back stiff leg deadlift	glutes	2	5
1010	back	band	http://d205bpvrqc9yn1.cloudfront.net/1010.gif	band straight leg deadlift	spine	4	5
1012	shoulders	band	http://d205bpvrqc9yn1.cloudfront.net/1012.gif	band twisting overhead press	delts	4	10
1369	lower legs	band	http://d205bpvrqc9yn1.cloudfront.net/1369.gif	band two legs calf raise - (band under both legs) v. 2	calves	6	5
1013	back	band	http://d205bpvrqc9yn1.cloudfront.net/1013.gif	band underhand pulldown	lats	2	30
1014	waist	band	http://d205bpvrqc9yn1.cloudfront.net/1014.gif	band v-up	abs	8	20
1015	waist	band	http://d205bpvrqc9yn1.cloudfront.net/1015.gif	band vertical pallof press	abs	1	25
1016	lower arms	band	http://d205bpvrqc9yn1.cloudfront.net/1016.gif	band wrist curl	forearms	7	10
1017	shoulders	band	http://d205bpvrqc9yn1.cloudfront.net/1017.gif	band y-raise	delts	6	10
23	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0023.gif	barbell alternate biceps curl	biceps	2	5
24	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0024.gif	barbell bench front squat	quads	2	20
25	chest	barbell	http://d205bpvrqc9yn1.cloudfront.net/0025.gif	barbell bench press	pectorals	10	25
26	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0026.gif	barbell bench squat	quads	9	10
1316	back	barbell	http://d205bpvrqc9yn1.cloudfront.net/1316.gif	barbell bent arm pullover	lats	10	5
27	back	barbell	http://d205bpvrqc9yn1.cloudfront.net/0027.gif	barbell bent over row	upper back	3	15
2407	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/2407.gif	barbell biceps curl (with arm blaster)	biceps	4	20
28	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0028.gif	barbell clean and press	quads	8	20
29	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0029.gif	barbell clean-grip front squat	glutes	4	10
30	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0030.gif	barbell close-grip bench press	triceps	7	15
31	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0031.gif	barbell curl	biceps	9	15
32	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0032.gif	barbell deadlift	glutes	9	15
33	chest	barbell	http://d205bpvrqc9yn1.cloudfront.net/0033.gif	barbell decline bench press	pectorals	8	25
34	back	barbell	http://d205bpvrqc9yn1.cloudfront.net/0034.gif	barbell decline bent arm pullover	lats	10	25
35	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0035.gif	barbell decline close grip to skull press	triceps	9	10
1255	chest	barbell	http://d205bpvrqc9yn1.cloudfront.net/1255.gif	barbell decline pullover	pectorals	4	25
36	chest	barbell	http://d205bpvrqc9yn1.cloudfront.net/0036.gif	barbell decline wide-grip press	pectorals	10	5
37	back	barbell	http://d205bpvrqc9yn1.cloudfront.net/0037.gif	barbell decline wide-grip pullover	lats	6	5
38	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0038.gif	barbell drag curl	biceps	6	5
1370	lower legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/1370.gif	barbell floor calf raise	calves	9	25
39	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0039.gif	barbell front chest squat	glutes	5	15
41	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/0041.gif	barbell front raise	delts	10	15
40	chest	barbell	http://d205bpvrqc9yn1.cloudfront.net/0040.gif	barbell front raise and pullover	pectorals	7	5
42	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0042.gif	barbell front squat	glutes	4	15
43	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0043.gif	barbell full squat	glutes	9	30
1461	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/1461.gif	barbell full squat (back pov)	glutes	8	25
1462	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/1462.gif	barbell full squat (side pov)	glutes	9	20
1545	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/1545.gif	barbell full zercher squat	glutes	3	5
1409	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/1409.gif	barbell glute bridge	glutes	10	5
3562	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/3562.gif	barbell glute bridge two legs on bench (male)	glutes	8	30
44	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0044.gif	barbell good morning	hamstrings	10	30
45	chest	barbell	http://d205bpvrqc9yn1.cloudfront.net/0045.gif	barbell guillotine bench press	pectorals	6	10
46	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0046.gif	barbell hack squat	glutes	3	10
1436	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/1436.gif	barbell high bar squat	glutes	10	5
47	chest	barbell	http://d205bpvrqc9yn1.cloudfront.net/0047.gif	barbell incline bench press	pectorals	9	5
1719	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/1719.gif	barbell incline close grip bench press	triceps	10	25
48	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0048.gif	barbell incline reverse-grip press	triceps	9	20
49	back	barbell	http://d205bpvrqc9yn1.cloudfront.net/0049.gif	barbell incline row	upper back	1	5
50	chest	barbell	http://d205bpvrqc9yn1.cloudfront.net/0050.gif	barbell incline shoulder raise	serratus anterior	1	15
51	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0051.gif	barbell jefferson squat	glutes	3	30
52	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0052.gif	barbell jm bench press	triceps	2	5
53	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0053.gif	barbell jump squat	glutes	8	5
1410	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/1410.gif	barbell lateral lunge	glutes	2	25
1435	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/1435.gif	barbell low bar squat	glutes	1	30
54	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0054.gif	barbell lunge	glutes	8	20
1720	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/1720.gif	barbell lying back of the head tricep extension	triceps	8	10
55	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0055.gif	barbell lying close-grip press	triceps	3	5
56	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0056.gif	barbell lying close-grip triceps extension	triceps	5	20
57	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0057.gif	barbell lying extension	triceps	3	25
58	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0058.gif	barbell lying lifting (on hip)	glutes	5	30
59	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0059.gif	barbell lying preacher curl	biceps	5	25
61	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0061.gif	barbell lying triceps extension	triceps	1	30
60	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0060.gif	barbell lying triceps extension skull crusher	triceps	5	5
63	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0063.gif	barbell narrow stance squat	glutes	2	5
64	back	barbell	http://d205bpvrqc9yn1.cloudfront.net/0064.gif	barbell one arm bent over row	upper back	8	10
65	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0065.gif	barbell one arm floor press	triceps	10	30
66	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0066.gif	barbell one arm side deadlift	glutes	3	15
67	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/0067.gif	barbell one arm snatch	delts	7	15
68	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0068.gif	barbell one leg squat	quads	10	25
69	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0069.gif	barbell overhead squat	quads	5	25
1411	lower arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/1411.gif	barbell palms down wrist curl over a bench	forearms	4	5
1412	lower arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/1412.gif	barbell palms up wrist curl over a bench	forearms	9	30
3017	back	barbell	http://d205bpvrqc9yn1.cloudfront.net/3017.gif	barbell pendlay row	upper back	3	5
1751	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/1751.gif	barbell pin presses	triceps	7	20
70	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0070.gif	barbell preacher curl	biceps	2	30
71	waist	barbell	http://d205bpvrqc9yn1.cloudfront.net/0071.gif	barbell press sit-up	abs	6	5
72	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0072.gif	barbell prone incline curl	biceps	6	10
73	back	barbell	http://d205bpvrqc9yn1.cloudfront.net/0073.gif	barbell pullover	lats	10	15
22	back	barbell	http://d205bpvrqc9yn1.cloudfront.net/0022.gif	barbell pullover to press	lats	6	30
74	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0074.gif	barbell rack pull	glutes	2	20
75	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/0075.gif	barbell rear delt raise	delts	4	5
76	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/0076.gif	barbell rear delt row	delts	2	10
78	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0078.gif	barbell rear lunge	glutes	5	5
77	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0077.gif	barbell rear lunge v. 2	glutes	8	15
79	lower arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0079.gif	barbell revers wrist curl v. 2	forearms	7	5
2187	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/2187.gif	barbell reverse close-grip bench press	triceps	3	20
80	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0080.gif	barbell reverse curl	biceps	5	25
118	back	barbell	http://d205bpvrqc9yn1.cloudfront.net/0118.gif	barbell reverse grip bent over row	upper back	2	30
1256	chest	barbell	http://d205bpvrqc9yn1.cloudfront.net/1256.gif	barbell reverse grip decline bench press	pectorals	4	5
1257	chest	barbell	http://d205bpvrqc9yn1.cloudfront.net/1257.gif	barbell reverse grip incline bench press	pectorals	6	5
1317	back	barbell	http://d205bpvrqc9yn1.cloudfront.net/1317.gif	barbell reverse grip incline bench row	upper back	3	25
1721	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/1721.gif	barbell reverse grip skullcrusher	triceps	3	30
81	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0081.gif	barbell reverse preacher curl	biceps	7	15
82	lower arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0082.gif	barbell reverse wrist curl	forearms	2	30
84	waist	barbell	http://d205bpvrqc9yn1.cloudfront.net/0084.gif	barbell rollerout	abs	3	25
83	waist	barbell	http://d205bpvrqc9yn1.cloudfront.net/0083.gif	barbell rollerout from bench	abs	7	30
85	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0085.gif	barbell romanian deadlift	glutes	2	10
86	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/0086.gif	barbell seated behind head military press	delts	8	10
87	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/0087.gif	barbell seated bradford rocky press	delts	2	15
88	lower legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0088.gif	barbell seated calf raise	calves	8	30
1371	lower legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/1371.gif	barbell seated calf raise	calves	9	10
1718	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/1718.gif	barbell seated close grip behind neck triceps extension	triceps	7	25
89	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0089.gif	barbell seated close-grip concentration curl	biceps	10	20
90	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0090.gif	barbell seated good morning	glutes	3	25
91	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/0091.gif	barbell seated overhead press	delts	6	20
92	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0092.gif	barbell seated overhead triceps extension	triceps	8	30
94	waist	barbell	http://d205bpvrqc9yn1.cloudfront.net/0094.gif	barbell seated twist	abs	9	25
95	back	barbell	http://d205bpvrqc9yn1.cloudfront.net/0095.gif	barbell shrug	traps	10	15
96	waist	barbell	http://d205bpvrqc9yn1.cloudfront.net/0096.gif	barbell side bent v. 2	abs	4	25
98	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0098.gif	barbell side split squat	quads	10	30
97	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0097.gif	barbell side split squat v. 2	quads	4	10
1756	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/1756.gif	barbell single leg deadlift	glutes	4	20
99	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0099.gif	barbell single leg split squat	quads	7	5
2799	waist	barbell	http://d205bpvrqc9yn1.cloudfront.net/2799.gif	barbell sitted alternate leg raise	abs	4	30
2800	waist	barbell	http://d205bpvrqc9yn1.cloudfront.net/2800.gif	barbell sitted alternate leg raise (female)	abs	7	20
100	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/0100.gif	barbell skier	delts	6	20
101	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0101.gif	barbell speed squat	glutes	5	10
2810	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/2810.gif	barbell split squat v. 2	quads	7	25
102	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0102.gif	barbell squat (on knees)	quads	7	20
2798	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/2798.gif	barbell squat jump step rear lunge	quads	2	15
103	waist	barbell	http://d205bpvrqc9yn1.cloudfront.net/0103.gif	barbell standing ab rollerout	abs	8	5
104	lower arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0104.gif	barbell standing back wrist curl	forearms	5	20
105	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/0105.gif	barbell standing bradford press	delts	10	10
1372	lower legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/1372.gif	barbell standing calf raise	calves	1	10
106	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0106.gif	barbell standing close grip curl	biceps	9	25
1456	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/1456.gif	barbell standing close grip military press	delts	1	15
2414	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/2414.gif	barbell standing concentration curl	biceps	10	15
107	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/0107.gif	barbell standing front raise over head	delts	4	30
108	lower legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0108.gif	barbell standing leg calf raise	calves	1	10
109	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0109.gif	barbell standing overhead triceps extension	triceps	7	10
110	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0110.gif	barbell standing reverse grip curl	biceps	6	20
111	lower legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0111.gif	barbell standing rocking leg calf raise	calves	3	15
112	waist	barbell	http://d205bpvrqc9yn1.cloudfront.net/0112.gif	barbell standing twist	abs	6	30
1629	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/1629.gif	barbell standing wide grip biceps curl	biceps	4	20
1457	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/1457.gif	barbell standing wide military press	delts	5	30
113	upper arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0113.gif	barbell standing wide-grip curl	biceps	6	25
114	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0114.gif	barbell step-up	glutes	9	5
115	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0115.gif	barbell stiff leg good morning	glutes	3	10
116	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0116.gif	barbell straight leg deadlift	hamstrings	10	15
117	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0117.gif	barbell sumo deadlift	glutes	10	30
3305	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/3305.gif	barbell thruster	delts	3	25
120	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/0120.gif	barbell upright row	delts	2	20
119	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/0119.gif	barbell upright row v. 2	delts	1	10
121	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/0121.gif	barbell upright row v. 3	delts	5	10
122	chest	barbell	http://d205bpvrqc9yn1.cloudfront.net/0122.gif	barbell wide bench press	pectorals	8	20
1258	chest	barbell	http://d205bpvrqc9yn1.cloudfront.net/1258.gif	barbell wide reverse grip bench press	pectorals	2	30
124	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0124.gif	barbell wide squat	quads	8	15
123	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/0123.gif	barbell wide-grip upright row	delts	6	10
126	lower arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0126.gif	barbell wrist curl	forearms	4	15
125	lower arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0125.gif	barbell wrist curl v. 2	forearms	6	30
127	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0127.gif	barbell zercher squat	glutes	6	15
3212	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3212.gif	basic toe touch (male)	glutes	7	15
128	shoulders	rope	http://d205bpvrqc9yn1.cloudfront.net/0128.gif	battling ropes	delts	6	25
3360	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3360.gif	bear crawl	cardiovascular system	10	20
1259	chest	assisted	http://d205bpvrqc9yn1.cloudfront.net/1259.gif	behind head chest stretch	pectorals	8	20
129	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0129.gif	bench dip (knees bent)	triceps	8	15
1399	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/1399.gif	bench dip on floor	triceps	8	5
130	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0130.gif	bench hip extension	glutes	1	15
3019	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3019.gif	bench pull-ups	lats	6	15
3639	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3639.gif	bent knee lying twist (male)	glutes	5	5
1770	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/1770.gif	biceps leg concentration curl	biceps	6	15
139	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0139.gif	biceps narrow pull-ups	biceps	1	25
140	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0140.gif	biceps pull-up	biceps	1	30
137	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0137.gif	body-up	triceps	4	20
3543	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3543.gif	bodyweight drop jump squat	glutes	2	10
3544	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3544.gif	bodyweight incline side plank	abs	6	5
1771	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/1771.gif	bodyweight kneeling triceps extension	triceps	3	20
1769	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/1769.gif	bodyweight side lying biceps curl	biceps	5	30
3168	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3168.gif	bodyweight squatting row	upper back	2	5
3167	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3167.gif	bodyweight squatting row (with towel)	upper back	8	25
1373	lower legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1373.gif	bodyweight standing calf raise	calves	10	20
3156	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3156.gif	bodyweight standing close-grip one arm row	upper back	3	20
3158	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3158.gif	bodyweight standing close-grip row	upper back	6	30
3162	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3162.gif	bodyweight standing one arm row	upper back	3	30
3161	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3161.gif	bodyweight standing one arm row (with towel)	upper back	6	15
3166	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3166.gif	bodyweight standing row	upper back	7	15
3165	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3165.gif	bodyweight standing row (with towel)	upper back	9	30
138	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0138.gif	bottoms-up	abs	8	30
1374	lower legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1374.gif	box jump down with one leg stabilization	calves	1	25
2466	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/2466.gif	bridge - mountain climber (cross body)	abs	5	20
1160	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/1160.gif	burpee	cardiovascular system	3	10
870	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0870.gif	butt-ups	abs	5	5
1494	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1494.gif	butterfly yoga pose	adductors	5	15
148	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0148.gif	cable alternate shoulder press	delts	1	10
149	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0149.gif	cable alternate triceps extension	triceps	8	15
3563	back	cable	http://d205bpvrqc9yn1.cloudfront.net/3563.gif	cable one arm pulldown	lats	8	10
3235	upper legs	cable	http://d205bpvrqc9yn1.cloudfront.net/3235.gif	cable assisted inverse leg curl	hamstrings	7	5
150	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0150.gif	cable bar lateral pulldown	lats	2	25
151	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/0151.gif	cable bench press	pectorals	7	30
1630	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1630.gif	cable close grip curl	biceps	2	30
1631	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1631.gif	cable concentration curl	biceps	3	30
152	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0152.gif	cable concentration extension (on knee)	triceps	9	30
153	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0153.gif	cable cross-over lateral pulldown	lats	2	15
154	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0154.gif	cable cross-over revers fly	delts	3	20
155	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/0155.gif	cable cross-over variation	pectorals	3	25
868	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0868.gif	cable curl	biceps	4	10
157	upper legs	cable	http://d205bpvrqc9yn1.cloudfront.net/0157.gif	cable deadlift	glutes	9	20
158	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/0158.gif	cable decline fly	pectorals	4	20
1260	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/1260.gif	cable decline one arm press	pectorals	4	10
1261	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/1261.gif	cable decline press	pectorals	4	10
159	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0159.gif	cable decline seated wide-grip row	upper back	3	15
1632	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1632.gif	cable drag curl	biceps	3	30
160	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0160.gif	cable floor seated wide-grip row	upper back	3	20
161	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0161.gif	cable forward raise	delts	10	15
162	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0162.gif	cable front raise	delts	4	10
164	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0164.gif	cable front shoulder raise	delts	1	5
165	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0165.gif	cable hammer curl (with rope)	biceps	5	20
1722	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1722.gif	cable high pulley overhead tricep extension	triceps	5	30
167	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0167.gif	cable high row (kneeling)	upper back	3	10
168	upper legs	cable	http://d205bpvrqc9yn1.cloudfront.net/0168.gif	cable hip adduction	adductors	7	20
169	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/0169.gif	cable incline bench press	pectorals	5	20
1318	back	cable	http://d205bpvrqc9yn1.cloudfront.net/1318.gif	cable incline bench row	upper back	9	5
171	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/0171.gif	cable incline fly	pectorals	5	20
170	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/0170.gif	cable incline fly (on stability ball)	pectorals	4	5
172	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0172.gif	cable incline pushdown	lats	6	30
173	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0173.gif	cable incline triceps extension	triceps	2	25
174	waist	cable	http://d205bpvrqc9yn1.cloudfront.net/0174.gif	cable judo flip	abs	9	30
860	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0860.gif	cable kickback	triceps	3	10
175	waist	cable	http://d205bpvrqc9yn1.cloudfront.net/0175.gif	cable kneeling crunch	abs	6	30
3697	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/3697.gif	cable kneeling rear delt row (with rope) (male)	delts	1	5
176	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0176.gif	cable kneeling triceps extension	triceps	10	10
2330	back	cable	http://d205bpvrqc9yn1.cloudfront.net/2330.gif	cable lat pulldown full range of motion	lats	1	5
177	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0177.gif	cable lateral pulldown (with rope attachment)	lats	2	10
2616	back	cable	http://d205bpvrqc9yn1.cloudfront.net/2616.gif	cable lateral pulldown with v-bar	lats	10	10
178	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0178.gif	cable lateral raise	delts	9	30
179	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/0179.gif	cable low fly	pectorals	5	25
180	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0180.gif	cable low seated row	upper back	7	10
1634	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1634.gif	cable lying bicep curl	biceps	1	25
182	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0182.gif	cable lying close-grip curl	biceps	6	30
184	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0184.gif	cable lying extension pullover (with rope attachment)	lats	4	20
185	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/0185.gif	cable lying fly	pectorals	6	30
186	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0186.gif	cable lying triceps extension v. 2	triceps	7	5
188	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/0188.gif	cable middle fly	pectorals	2	20
189	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0189.gif	cable one arm bent over row	upper back	4	25
190	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0190.gif	cable one arm curl	biceps	8	25
1262	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/1262.gif	cable one arm decline chest fly	pectorals	5	10
1263	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/1263.gif	cable one arm fly on exercise ball	pectorals	9	10
1264	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/1264.gif	cable one arm incline fly on exercise ball	pectorals	8	20
1265	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/1265.gif	cable one arm incline press	pectorals	6	15
1266	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/1266.gif	cable one arm incline press on exercise ball	pectorals	10	15
191	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/0191.gif	cable one arm lateral bent-over	pectorals	1	10
192	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0192.gif	cable one arm lateral raise	delts	10	10
1633	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1633.gif	cable one arm preacher curl	biceps	9	25
1267	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/1267.gif	cable one arm press on exercise ball	pectorals	6	15
1635	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1635.gif	cable one arm reverse preacher curl	biceps	5	15
193	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0193.gif	cable one arm straight back high row (kneeling)	upper back	7	20
1723	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1723.gif	cable one arm tricep pushdown	triceps	10	5
1636	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1636.gif	cable overhead curl	biceps	9	20
1637	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1637.gif	cable overhead curl on exercise ball	biceps	8	5
194	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0194.gif	cable overhead triceps extension (rope attachment)	triceps	9	25
1319	back	cable	http://d205bpvrqc9yn1.cloudfront.net/1319.gif	cable palm rotational row	upper back	3	10
195	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0195.gif	cable preacher curl	biceps	4	15
1268	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/1268.gif	cable press on exercise ball	pectorals	1	20
196	upper legs	cable	http://d205bpvrqc9yn1.cloudfront.net/0196.gif	cable pull through (with rope)	glutes	6	10
198	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0198.gif	cable pulldown	lats	7	30
197	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0197.gif	cable pulldown (pro lat bar)	lats	5	5
1638	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1638.gif	cable pulldown bicep curl	biceps	2	15
201	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0201.gif	cable pushdown	triceps	8	30
199	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0199.gif	cable pushdown (straight arm) v. 2	lats	5	15
200	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0200.gif	cable pushdown (with rope attachment)	triceps	4	10
202	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0202.gif	cable rear delt row (stirrups)	delts	1	25
203	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0203.gif	cable rear delt row (with rope)	delts	9	10
204	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0204.gif	cable rear drive	triceps	9	10
205	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0205.gif	cable rear pulldown	lats	9	5
873	waist	cable	http://d205bpvrqc9yn1.cloudfront.net/0873.gif	cable reverse crunch	abs	1	5
206	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0206.gif	cable reverse curl	biceps	6	20
2406	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/2406.gif	cable reverse grip triceps pushdown (sz-bar) (with arm blaster)	triceps	3	25
1413	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1413.gif	cable reverse one arm curl	biceps	4	30
209	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0209.gif	cable reverse preacher curl	biceps	5	25
210	lower arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0210.gif	cable reverse wrist curl	forearms	9	25
207	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0207.gif	cable reverse-grip pushdown	triceps	8	25
208	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0208.gif	cable reverse-grip straight back seated high row	upper back	2	10
1320	back	cable	http://d205bpvrqc9yn1.cloudfront.net/1320.gif	cable rope crossover seated row	upper back	2	30
1321	back	cable	http://d205bpvrqc9yn1.cloudfront.net/1321.gif	cable rope elevated seated row	upper back	3	20
1322	back	cable	http://d205bpvrqc9yn1.cloudfront.net/1322.gif	cable rope extension incline bench row	upper back	2	5
1639	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1639.gif	cable rope hammer preacher curl	biceps	9	25
1724	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1724.gif	cable rope high pulley overhead tricep extension	triceps	10	25
1725	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1725.gif	cable rope incline tricep extension	triceps	3	5
1726	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1726.gif	cable rope lying on floor tricep extension	triceps	3	10
1640	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1640.gif	cable rope one arm hammer preacher curl	biceps	1	10
1323	back	cable	http://d205bpvrqc9yn1.cloudfront.net/1323.gif	cable rope seated row	upper back	1	5
211	waist	cable	http://d205bpvrqc9yn1.cloudfront.net/0211.gif	cable russian twists (on stability ball)	abs	1	15
2144	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/2144.gif	cable seated chest press	pectorals	9	25
212	waist	cable	http://d205bpvrqc9yn1.cloudfront.net/0212.gif	cable seated crunch	abs	5	30
1641	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1641.gif	cable seated curl	biceps	4	5
213	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0213.gif	cable seated high row (v-bar)	lats	4	15
214	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0214.gif	cable seated one arm alternate row	upper back	6	25
1642	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1642.gif	cable seated one arm concentration curl	biceps	10	20
1643	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1643.gif	cable seated overhead curl	biceps	8	5
215	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0215.gif	cable seated rear lateral raise	delts	10	25
861	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0861.gif	cable seated row	upper back	4	25
216	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0216.gif	cable seated shoulder internal rotation	delts	1	5
2399	waist	cable	http://d205bpvrqc9yn1.cloudfront.net/2399.gif	cable seated twist	abs	1	20
218	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0218.gif	cable seated wide-grip row	upper back	7	5
219	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0219.gif	cable shoulder press	delts	10	5
220	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0220.gif	cable shrug	traps	1	10
222	waist	cable	http://d205bpvrqc9yn1.cloudfront.net/0222.gif	cable side bend	abs	10	15
221	waist	cable	http://d205bpvrqc9yn1.cloudfront.net/0221.gif	cable side bend crunch (bosu ball)	abs	7	15
223	waist	cable	http://d205bpvrqc9yn1.cloudfront.net/0223.gif	cable side crunch	abs	9	5
1717	back	cable	http://d205bpvrqc9yn1.cloudfront.net/1717.gif	cable squat row (with rope attachment)	lats	8	5
1644	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1644.gif	cable squatting curl	biceps	9	25
260	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0260.gif	cocoons	abs	10	25
224	lower arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0224.gif	cable standing back wrist curl	forearms	6	15
1375	lower legs	cable	http://d205bpvrqc9yn1.cloudfront.net/1375.gif	cable standing calf raise	calves	6	15
225	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0225.gif	cable standing cross-over high reverse fly	delts	7	10
226	waist	cable	http://d205bpvrqc9yn1.cloudfront.net/0226.gif	cable standing crunch	abs	1	10
874	waist	cable	http://d205bpvrqc9yn1.cloudfront.net/0874.gif	cable standing crunch (with rope attachment)	abs	7	15
227	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/0227.gif	cable standing fly	pectorals	10	15
228	upper legs	cable	http://d205bpvrqc9yn1.cloudfront.net/0228.gif	cable standing hip extension	glutes	6	10
229	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0229.gif	cable standing inner curl	biceps	3	5
230	waist	cable	http://d205bpvrqc9yn1.cloudfront.net/0230.gif	cable standing lift	abs	1	30
231	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0231.gif	cable standing one arm triceps extension	triceps	7	20
1376	lower legs	cable	http://d205bpvrqc9yn1.cloudfront.net/1376.gif	cable standing one leg calf raise	calves	6	20
232	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0232.gif	cable standing pulldown (with rope)	biceps	9	20
233	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0233.gif	cable standing rear delt row (with rope)	delts	6	30
1727	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1727.gif	cable standing reverse grip one arm overhead tricep extension	triceps	3	25
234	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0234.gif	cable standing row (v-bar)	upper back	7	15
235	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0235.gif	cable standing shoulder external rotation	delts	4	30
236	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0236.gif	cable standing twist row (v-bar)	upper back	5	25
1269	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/1269.gif	cable standing up straight crossovers	pectorals	2	30
238	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0238.gif	cable straight arm pulldown	lats	6	30
237	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0237.gif	cable straight arm pulldown (with rope)	lats	2	20
239	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0239.gif	cable straight back seated row	upper back	10	30
240	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0240.gif	cable supine reverse fly	delts	7	5
2464	back	cable	http://d205bpvrqc9yn1.cloudfront.net/2464.gif	cable thibaudeau kayak row	lats	4	30
241	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0241.gif	cable triceps pushdown (v-bar)	triceps	8	20
2405	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/2405.gif	cable triceps pushdown (v-bar) (with arm blaster)	triceps	5	5
242	waist	cable	http://d205bpvrqc9yn1.cloudfront.net/0242.gif	cable tuck reverse crunch	abs	10	20
243	waist	cable	http://d205bpvrqc9yn1.cloudfront.net/0243.gif	cable twist	abs	7	20
862	waist	cable	http://d205bpvrqc9yn1.cloudfront.net/0862.gif	cable twist (up-down)	abs	10	10
244	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0244.gif	cable twisting pull	lats	9	15
1645	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1645.gif	cable two arm curl on incline bench	biceps	9	15
1728	upper arms	cable	http://d205bpvrqc9yn1.cloudfront.net/1728.gif	cable two arm tricep kickback	triceps	4	30
245	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0245.gif	cable underhand pulldown	lats	6	15
1270	chest	cable	http://d205bpvrqc9yn1.cloudfront.net/1270.gif	cable upper chest crossovers	pectorals	8	30
1324	back	cable	http://d205bpvrqc9yn1.cloudfront.net/1324.gif	cable upper row	upper back	4	15
246	shoulders	cable	http://d205bpvrqc9yn1.cloudfront.net/0246.gif	cable upright row	delts	4	20
1325	back	cable	http://d205bpvrqc9yn1.cloudfront.net/1325.gif	cable wide grip rear pulldown behind neck	lats	6	5
247	lower arms	cable	http://d205bpvrqc9yn1.cloudfront.net/0247.gif	cable wrist curl	forearms	9	25
1407	lower legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1407.gif	calf push stretch with hands against wall	calves	5	20
1377	lower legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1377.gif	calf stretch with hands against wall	calves	1	5
1378	lower legs	rope	http://d205bpvrqc9yn1.cloudfront.net/1378.gif	calf stretch with rope	calves	6	5
248	back	barbell	http://d205bpvrqc9yn1.cloudfront.net/0248.gif	cambered bar lying row	upper back	9	25
2963	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/2963.gif	captains chair straight leg raise	abs	3	25
1548	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1548.gif	chair leg extended stretch	quads	7	10
1271	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/1271.gif	chest and front of shoulder stretch	pectorals	6	30
251	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/0251.gif	chest dip	pectorals	9	10
1430	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/1430.gif	chest dip (on dip-pull-up cage)	pectorals	9	20
2462	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/2462.gif	chest dip on straight bar	pectorals	9	20
1272	chest	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1272.gif	chest stretch with exercise ball	pectorals	4	25
3216	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/3216.gif	chest tap push-up (male)	pectorals	4	10
1326	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1326.gif	chin-up	lats	7	5
253	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0253.gif	chin-ups (narrow parallel grip)	upper back	5	5
257	lower legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0257.gif	circles knee stretch	calves	9	20
1273	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/1273.gif	clap push up	pectorals	8	20
258	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/0258.gif	clock push-up	pectorals	10	15
1327	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1327.gif	close grip chin-up	lats	8	10
259	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0259.gif	close-grip push-up	triceps	7	25
2398	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/2398.gif	close-grip push-up (on knees)	triceps	5	30
1468	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/1468.gif	crab twist toe touch	abs	1	5
262	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0262.gif	cross body crunch	abs	7	25
267	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0267.gif	crunch (hands overhead)	abs	6	20
271	waist	stability ball	http://d205bpvrqc9yn1.cloudfront.net/0271.gif	crunch (on stability ball)	abs	8	30
272	waist	stability ball	http://d205bpvrqc9yn1.cloudfront.net/0272.gif	crunch (on stability ball, arms straight)	abs	7	10
274	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0274.gif	crunch floor	abs	6	10
3016	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3016.gif	curl-up	abs	4	25
3769	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3769.gif	curtsey squat	glutes	5	20
2331	cardio	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/2331.gif	cycle cross trainer	cardiovascular system	2	10
276	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0276.gif	dead bug	abs	2	30
277	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0277.gif	decline crunch	abs	8	10
279	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/0279.gif	decline push-up	pectorals	7	20
282	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0282.gif	decline sit-up	abs	7	10
1274	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1274.gif	deep push up	pectorals	10	5
283	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0283.gif	diamond push-up	triceps	9	20
284	lower legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0284.gif	donkey calf raise	calves	7	5
1275	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/1275.gif	drop push up	pectorals	3	30
285	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0285.gif	dumbbell alternate biceps curl	biceps	3	10
2403	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2403.gif	dumbbell alternate biceps curl (with arm blaster)	biceps	2	10
1646	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1646.gif	dumbbell alternate hammer preacher curl	biceps	6	25
1647	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1647.gif	dumbbell alternate preacher curl	biceps	8	20
1648	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1648.gif	dumbbell alternate seated hammer curl	biceps	6	25
286	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0286.gif	dumbbell alternate side press	delts	1	10
1649	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1649.gif	dumbbell alternating bicep curl with leg raised on exercise ball	biceps	6	15
1650	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1650.gif	dumbbell alternating seated bicep curl on exercise ball	biceps	3	5
2137	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2137.gif	dumbbell arnold press	delts	1	25
287	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0287.gif	dumbbell arnold press v. 2	delts	8	5
288	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0288.gif	dumbbell around pullover	pectorals	5	25
289	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0289.gif	dumbbell bench press	pectorals	7	5
290	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0290.gif	dumbbell bench seated press	delts	6	30
291	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0291.gif	dumbbell bench squat	glutes	10	30
293	back	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0293.gif	dumbbell bent over row	upper back	2	25
1651	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1651.gif	dumbbell bicep curl lunge with bowling motion	biceps	10	5
1652	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1652.gif	dumbbell bicep curl on exercise ball with leg raised	biceps	1	20
1653	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1653.gif	dumbbell bicep curl with stork stance	biceps	2	25
294	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0294.gif	dumbbell biceps curl	biceps	7	10
2401	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2401.gif	dumbbell biceps curl (with arm blaster)	biceps	2	20
1654	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1654.gif	dumbbell biceps curl reverse	biceps	6	25
1655	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1655.gif	dumbbell biceps curl squat	biceps	1	30
1656	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1656.gif	dumbbell biceps curl v sit on bosu ball	biceps	5	15
1201	cardio	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1201.gif	dumbbell burpee	cardiovascular system	10	20
295	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0295.gif	dumbbell clean	glutes	3	30
1731	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1731.gif	dumbbell close grip press	triceps	5	25
296	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0296.gif	dumbbell close-grip press	triceps	3	5
297	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0297.gif	dumbbell concentration curl	biceps	9	15
3635	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/3635.gif	dumbbell contralateral forward lunge	glutes	1	10
298	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0298.gif	dumbbell cross body hammer curl	biceps	1	30
1657	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1657.gif	dumbbell cross body hammer curl v. 2	biceps	3	30
299	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0299.gif	dumbbell cuban press	delts	6	25
2136	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2136.gif	dumbbell cuban press v. 2	delts	2	15
300	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0300.gif	dumbbell deadlift	glutes	9	25
301	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0301.gif	dumbbell decline bench press	pectorals	1	15
302	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0302.gif	dumbbell decline fly	pectorals	6	10
303	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0303.gif	dumbbell decline hammer press	pectorals	5	30
1276	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1276.gif	dumbbell decline one arm fly	pectorals	4	30
1617	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1617.gif	dumbbell decline one arm hammer press	triceps	5	5
305	back	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0305.gif	dumbbell decline shrug	traps	7	10
304	back	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0304.gif	dumbbell decline shrug v. 2	traps	3	5
306	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0306.gif	dumbbell decline triceps extension	triceps	4	25
307	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0307.gif	dumbbell decline twist fly	pectorals	6	25
1437	lower arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1437.gif	dumbbell finger curls	forearms	6	15
308	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0308.gif	dumbbell fly	pectorals	4	20
1277	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1277.gif	dumbbell fly on exercise ball	pectorals	7	30
1732	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1732.gif	dumbbell forward lunge triceps extension	triceps	9	5
310	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0310.gif	dumbbell front raise	delts	1	15
309	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0309.gif	dumbbell front raise v. 2	delts	10	5
311	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0311.gif	dumbbell full can lateral raise	delts	5	15
1760	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1760.gif	dumbbell goblet squat	quads	7	10
313	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0313.gif	dumbbell hammer curl	biceps	1	15
1659	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1659.gif	dumbbell hammer curl on exercise ball	biceps	8	25
312	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0312.gif	dumbbell hammer curl v. 2	biceps	8	10
2402	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2402.gif	dumbbell hammer curls (with arm blaster)	biceps	2	5
1664	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1664.gif	dumbbell high curl	biceps	5	30
3545	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/3545.gif	dumbbell incline alternate press	pectorals	8	15
314	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0314.gif	dumbbell incline bench press	pectorals	10	30
315	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0315.gif	dumbbell incline biceps curl	biceps	6	25
316	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0316.gif	dumbbell incline breeding	pectorals	9	20
318	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0318.gif	dumbbell incline curl	biceps	1	20
317	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0317.gif	dumbbell incline curl v. 2	biceps	7	15
319	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0319.gif	dumbbell incline fly	pectorals	7	10
1278	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1278.gif	dumbbell incline fly on exercise ball	pectorals	4	25
320	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0320.gif	dumbbell incline hammer curl	biceps	7	25
321	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0321.gif	dumbbell incline hammer press	pectorals	5	30
1618	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1618.gif	dumbbell incline hammer press on exercise ball	triceps	10	30
322	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0322.gif	dumbbell incline inner biceps curl	biceps	4	10
1279	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1279.gif	dumbbell incline one arm fly	pectorals	7	20
1280	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1280.gif	dumbbell incline one arm fly on exercise ball	pectorals	2	30
1619	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1619.gif	dumbbell incline one arm hammer press	triceps	7	15
1620	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1620.gif	dumbbell incline one arm hammer press on exercise ball	triceps	8	25
323	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0323.gif	dumbbell incline one arm lateral raise	delts	4	10
1281	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1281.gif	dumbbell incline one arm press	pectorals	5	10
1282	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1282.gif	dumbbell incline one arm press on exercise ball	pectorals	9	20
324	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0324.gif	dumbbell incline palm-in press	pectorals	9	20
1283	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1283.gif	dumbbell incline press on exercise ball	pectorals	1	5
325	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0325.gif	dumbbell incline raise	delts	7	30
326	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0326.gif	dumbbell incline rear lateral raise	delts	8	30
327	back	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0327.gif	dumbbell incline row	upper back	8	15
328	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0328.gif	dumbbell incline shoulder raise	serratus anterior	8	5
329	back	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0329.gif	dumbbell incline shrug	traps	6	15
3542	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/3542.gif	dumbbell incline t-raise	delts	8	25
330	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0330.gif	dumbbell incline triceps extension	triceps	9	10
331	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0331.gif	dumbbell incline twisted flyes	pectorals	7	10
1733	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1733.gif	dumbbell incline two arm extension	triceps	1	15
3541	back	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/3541.gif	dumbbell incline y-raise	upper back	9	5
332	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0332.gif	dumbbell iron cross	delts	6	10
333	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0333.gif	dumbbell kickback	triceps	4	10
1734	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1734.gif	dumbbell kickbacks on exercise ball	triceps	9	20
1660	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1660.gif	dumbbell kneeling bicep curl exercise ball	biceps	10	30
334	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0334.gif	dumbbell lateral raise	delts	1	30
335	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0335.gif	dumbbell lateral to front raise	delts	5	15
336	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0336.gif	dumbbell lunge	glutes	4	15
1658	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1658.gif	dumbbell lunge with bicep curl	biceps	2	15
3119	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3119.gif	potty squat	abs	9	5
337	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0337.gif	dumbbell lying  extension (across face)	triceps	9	15
1729	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1729.gif	dumbbell lying alternate extension	triceps	10	20
338	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0338.gif	dumbbell lying elbow press	triceps	10	15
863	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0863.gif	dumbbell lying external shoulder rotation	delts	8	20
339	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0339.gif	dumbbell lying femoral	hamstrings	9	5
340	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0340.gif	dumbbell lying hammer press	pectorals	3	10
2470	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2470.gif	dumbbell lying on floor rear delt raise	delts	3	25
341	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0341.gif	dumbbell lying one arm deltoid rear	delts	3	15
343	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0343.gif	dumbbell lying one arm press	pectorals	7	10
342	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0342.gif	dumbbell lying one arm press v. 2	pectorals	2	10
344	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0344.gif	dumbbell lying one arm pronated triceps extension	triceps	7	20
345	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0345.gif	dumbbell lying one arm rear lateral raise	delts	2	20
346	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0346.gif	dumbbell lying one arm supinated triceps extension	triceps	9	15
347	lower arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0347.gif	dumbbell lying pronation	forearms	5	25
2705	lower arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2705.gif	dumbbell lying pronation on floor	forearms	1	30
1284	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1284.gif	dumbbell lying pullover on exercise ball	pectorals	4	30
1328	back	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1328.gif	dumbbell lying rear delt row	upper back	7	15
348	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0348.gif	dumbbell lying rear lateral raise	delts	7	30
1735	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1735.gif	dumbbell lying single extension	triceps	4	10
349	lower arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0349.gif	dumbbell lying supination	forearms	3	15
2706	lower arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2706.gif	dumbbell lying supination on floor	forearms	8	15
1661	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1661.gif	dumbbell lying supine biceps curl	biceps	9	5
350	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0350.gif	dumbbell lying supine curl	biceps	4	10
351	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0351.gif	dumbbell lying triceps extension	triceps	7	25
1662	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1662.gif	dumbbell lying wide curl	biceps	6	10
352	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0352.gif	dumbbell neutral grip bench press	triceps	6	30
1285	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1285.gif	dumbbell one arm bench fly	pectorals	4	5
292	back	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0292.gif	dumbbell one arm bent-over row	upper back	2	15
1286	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1286.gif	dumbbell one arm chest fly on exercise ball	pectorals	8	10
353	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0353.gif	dumbbell one arm concetration curl (on stability ball)	biceps	8	25
1287	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1287.gif	dumbbell one arm decline chest press	pectorals	3	30
1288	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1288.gif	dumbbell one arm fly on exercise ball	pectorals	5	30
1736	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1736.gif	dumbbell one arm french press on exercise ball	triceps	3	30
1663	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1663.gif	dumbbell one arm hammer preacher curl	biceps	7	10
1621	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1621.gif	dumbbell one arm hammer press on exercise ball	triceps	2	25
1289	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1289.gif	dumbbell one arm incline chest press	pectorals	9	30
354	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0354.gif	dumbbell one arm kickback	triceps	6	20
355	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0355.gif	dumbbell one arm lateral raise	delts	7	25
356	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0356.gif	dumbbell one arm lateral raise with support	delts	9	15
1290	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1290.gif	dumbbell one arm press on exercise ball	pectorals	7	5
1665	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1665.gif	dumbbell one arm prone curl	biceps	1	30
1666	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1666.gif	dumbbell one arm prone hammer curl	biceps	8	10
1291	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1291.gif	dumbbell one arm pullover on exercise ball	pectorals	1	10
358	lower arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0358.gif	dumbbell one arm revers wrist curl	forearms	5	10
359	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0359.gif	dumbbell one arm reverse fly (with support)	delts	2	10
1622	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1622.gif	dumbbell one arm reverse grip press	pectorals	10	10
1414	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1414.gif	dumbbell one arm reverse preacher curl	biceps	9	20
1667	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1667.gif	dumbbell one arm reverse spider curl	biceps	4	20
1668	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1668.gif	dumbbell one arm seated bicep curl on exercise ball	biceps	6	15
1669	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1669.gif	dumbbell one arm seated hammer curl	biceps	7	30
1415	lower arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1415.gif	dumbbell one arm seated neutral wrist curl	forearms	4	5
361	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0361.gif	dumbbell one arm shoulder press	delts	10	10
360	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0360.gif	dumbbell one arm shoulder press v. 2	delts	6	10
3888	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/3888.gif	dumbbell one arm snatch	glutes	8	30
1670	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1670.gif	dumbbell one arm standing curl	biceps	8	15
1671	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1671.gif	dumbbell one arm standing hammer curl	biceps	7	5
362	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0362.gif	dumbbell one arm triceps extension (on bench)	triceps	7	10
363	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0363.gif	dumbbell one arm upright row	delts	9	10
364	lower arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0364.gif	dumbbell one arm wrist curl	forearms	9	30
1672	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1672.gif	dumbbell one arm zottman preacher curl	biceps	2	20
1292	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1292.gif	dumbbell one leg fly on exercise ball	pectorals	4	10
365	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0365.gif	dumbbell over bench neutral wrist curl	biceps	8	5
366	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0366.gif	dumbbell over bench one arm  neutral wrist curl	biceps	8	5
1441	lower arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1441.gif	dumbbell over bench one arm reverse wrist curl	forearms	8	5
367	lower arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0367.gif	dumbbell over bench one arm wrist curl	forearms	8	20
368	lower arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0368.gif	dumbbell over bench revers wrist curl	forearms	1	30
369	lower arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0369.gif	dumbbell over bench wrist curl	forearms	1	25
1329	back	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1329.gif	dumbbell palm rotational bent over row	upper back	3	20
1623	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1623.gif	dumbbell palms in incline bench press	triceps	1	15
370	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0370.gif	dumbbell peacher hammer curl	biceps	10	10
371	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0371.gif	dumbbell plyo squat	glutes	5	25
372	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0372.gif	dumbbell preacher curl	biceps	5	15
1673	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1673.gif	dumbbell preacher curl over exercise ball	biceps	6	10
1293	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1293.gif	dumbbell press on exercise ball	pectorals	1	15
373	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0373.gif	dumbbell pronate-grip triceps extension	triceps	5	25
374	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0374.gif	dumbbell prone incline curl	biceps	3	5
1674	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1674.gif	dumbbell prone incline hammer curl	biceps	1	10
375	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0375.gif	dumbbell pullover	pectorals	1	15
1294	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1294.gif	dumbbell pullover hip extension on exercise ball	pectorals	9	5
1295	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1295.gif	dumbbell pullover on exercise ball	pectorals	8	20
1700	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1700.gif	dumbbell push press	delts	4	30
376	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0376.gif	dumbbell raise	delts	5	5
2292	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2292.gif	dumbbell rear delt raise	delts	5	30
377	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0377.gif	dumbbell rear delt row_shoulder	delts	10	25
378	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0378.gif	dumbbell rear fly	delts	1	10
380	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0380.gif	dumbbell rear lateral raise	delts	4	20
379	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0379.gif	dumbbell rear lateral raise (support head)	delts	1	30
381	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0381.gif	dumbbell rear lunge	glutes	6	30
382	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0382.gif	dumbbell revers grip biceps curl	biceps	4	20
1624	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1624.gif	dumbbell reverse bench press	pectorals	10	15
383	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0383.gif	dumbbell reverse fly	delts	1	25
1330	back	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1330.gif	dumbbell reverse grip incline bench one arm row	upper back	8	30
1331	back	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1331.gif	dumbbell reverse grip incline bench two arm row	upper back	8	25
2327	back	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2327.gif	dumbbell reverse grip row (female)	upper back	5	10
384	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0384.gif	dumbbell reverse preacher curl	biceps	1	30
1675	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1675.gif	dumbbell reverse spider curl	biceps	4	25
385	lower arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0385.gif	dumbbell reverse wrist curl	forearms	4	5
1459	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1459.gif	dumbbell romanian deadlift	glutes	4	20
386	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0386.gif	dumbbell rotation reverse fly	delts	3	5
2397	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2397.gif	dumbbell scott press	delts	10	25
387	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0387.gif	dumbbell seated alternate front raise	delts	1	5
1676	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1676.gif	dumbbell seated alternate hammer curl on exercise ball	biceps	6	20
388	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0388.gif	dumbbell seated alternate press	delts	1	5
3546	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/3546.gif	dumbbell seated alternate shoulder	delts	2	15
389	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0389.gif	dumbbell seated bench extension	triceps	3	15
2317	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2317.gif	dumbbell seated bent arm lateral raise	delts	6	5
1730	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1730.gif	dumbbell seated bent over alternate kickback	triceps	2	30
1737	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1737.gif	dumbbell seated bent over triceps extension	triceps	5	25
1677	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1677.gif	dumbbell seated bicep curl	biceps	10	15
390	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0390.gif	dumbbell seated biceps curl (on stability ball)	biceps	1	30
3547	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/3547.gif	dumbbell seated biceps curl to shoulder press	biceps	2	30
1379	lower legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1379.gif	dumbbell seated calf raise	calves	8	5
391	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0391.gif	dumbbell seated curl	biceps	9	15
392	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0392.gif	dumbbell seated front raise	delts	4	20
1678	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1678.gif	dumbbell seated hammer curl	biceps	6	20
393	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0393.gif	dumbbell seated inner biceps curl	biceps	8	30
394	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0394.gif	dumbbell seated kickback	triceps	4	20
396	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0396.gif	dumbbell seated lateral raise	delts	10	30
395	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0395.gif	dumbbell seated lateral raise v. 2	delts	4	25
397	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0397.gif	dumbbell seated neutral wrist curl	biceps	10	20
1679	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1679.gif	dumbbell seated one arm bicep curl on exercise ball with leg raised	biceps	2	10
398	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0398.gif	dumbbell seated one arm kickback	triceps	7	5
399	lower arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0399.gif	dumbbell seated one arm rotate	forearms	10	20
400	lower legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0400.gif	dumbbell seated one leg calf raise	calves	3	20
1380	lower legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1380.gif	dumbbell seated one leg calf raise - hammer grip	calves	6	5
1381	lower legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1381.gif	dumbbell seated one leg calf raise - palm up	calves	9	15
401	lower arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0401.gif	dumbbell seated palms up wrist curl	forearms	8	10
402	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0402.gif	dumbbell seated preacher curl	biceps	4	5
403	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0403.gif	dumbbell seated revers grip concentration curl	biceps	10	5
1738	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1738.gif	dumbbell seated reverse grip one arm overhead tricep extension	triceps	6	10
405	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0405.gif	dumbbell seated shoulder press	delts	9	5
404	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0404.gif	dumbbell seated shoulder press (parallel grip)	delts	5	20
2188	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2188.gif	dumbbell seated triceps extension	triceps	2	20
406	back	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0406.gif	dumbbell shrug	traps	1	5
407	waist	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0407.gif	dumbbell side bend	abs	1	15
408	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0408.gif	dumbbell side lying one hand raise	delts	4	30
3664	back	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/3664.gif	dumbbell side plank with rear fly	upper back	4	30
3548	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/3548.gif	dumbbell single arm overhead carry	delts	1	15
409	lower legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0409.gif	dumbbell single leg calf raise	calves	1	10
1757	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1757.gif	dumbbell single leg deadlift	glutes	9	5
2805	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2805.gif	dumbbell single leg deadlift with stepbox support	glutes	10	10
410	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0410.gif	dumbbell single leg split squat	quads	7	20
411	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0411.gif	dumbbell single leg squat	glutes	1	15
413	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0413.gif	dumbbell squat	glutes	10	25
3560	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/3560.gif	dumbbell standing alternate hammer curl and press	biceps	7	30
414	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0414.gif	dumbbell standing alternate overhead press	delts	2	15
415	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0415.gif	dumbbell standing alternate raise	delts	4	5
1739	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1739.gif	dumbbell standing alternating tricep kickback	triceps	8	5
2143	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2143.gif	dumbbell standing around world	delts	5	30
1740	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1740.gif	dumbbell standing bent over one arm triceps extension	triceps	9	30
1741	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1741.gif	dumbbell standing bent over two arm triceps extension	triceps	3	20
416	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0416.gif	dumbbell standing biceps curl	biceps	3	15
417	lower legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0417.gif	dumbbell standing calf raise	calves	10	5
418	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0418.gif	dumbbell standing concentration curl	biceps	9	30
419	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0419.gif	dumbbell standing front raise above head	delts	3	15
2321	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2321.gif	dumbbell standing inner biceps curl v. 2	biceps	5	15
420	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0420.gif	dumbbell standing kickback	triceps	1	25
421	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0421.gif	dumbbell standing one arm concentration curl	biceps	1	15
422	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0422.gif	dumbbell standing one arm curl (over incline bench)	biceps	5	30
1680	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1680.gif	dumbbell standing one arm curl over incline bench	biceps	6	25
423	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0423.gif	dumbbell standing one arm extension	triceps	2	20
424	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0424.gif	dumbbell standing one arm palm in press	delts	3	15
425	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0425.gif	dumbbell standing one arm reverse curl	biceps	9	15
426	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0426.gif	dumbbell standing overhead press	delts	8	20
427	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0427.gif	dumbbell standing palms in press	delts	8	25
428	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0428.gif	dumbbell standing preacher curl	biceps	1	15
429	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0429.gif	dumbbell standing reverse curl	biceps	1	15
430	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0430.gif	dumbbell standing triceps extension	triceps	2	30
2293	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2293.gif	dumbbell standing zottman preacher curl	biceps	2	20
1684	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1684.gif	dumbbell step up single leg balance with bicep curl	biceps	10	25
431	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0431.gif	dumbbell step-up	glutes	5	30
2796	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2796.gif	dumbbell step-up lunge	quads	3	15
2812	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2812.gif	dumbbell step-up split squat	quads	8	10
432	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0432.gif	dumbbell stiff leg deadlift	glutes	10	20
433	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0433.gif	dumbbell straight arm pullover	pectorals	2	10
434	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0434.gif	dumbbell straight leg deadlift	glutes	4	25
2808	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2808.gif	dumbbell sumo pull through	glutes	4	5
2803	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2803.gif	dumbbell supported squat	quads	2	15
436	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0436.gif	dumbbell tate press	triceps	8	25
1742	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1742.gif	dumbbell tricep kickback with stork stance	triceps	6	20
1743	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1743.gif	dumbbell twisting bench press	triceps	2	30
437	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0437.gif	dumbbell upright row	delts	6	10
1765	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1765.gif	dumbbell upright row (back pov)	delts	9	5
864	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0864.gif	dumbbell upright shoulder external rotation	delts	5	30
5201	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/5201.gif	dumbbell waiter biceps curl	biceps	8	25
438	shoulders	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0438.gif	dumbbell w-press	delts	4	20
439	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0439.gif	dumbbell zottman curl	biceps	2	30
2294	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2294.gif	dumbbell zottman preacher curl	biceps	10	25
2189	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2189.gif	dumbbells seated triceps extension	triceps	8	10
1167	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/1167.gif	dynamic chest stretch (male)	pectorals	8	20
3287	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/3287.gif	elbow dips	triceps	3	20
1772	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1772.gif	elbow lift - reverse push-up	upper back	3	10
443	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0443.gif	elbow-to-knee	abs	1	30
3292	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3292.gif	elevator	upper back	1	5
1332	back	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1332.gif	exercise ball alternating arm ups	lats	8	25
1333	back	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1333.gif	exercise ball back extension with arms extended	spine	3	25
1334	back	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1334.gif	exercise ball back extension with hands behind head	spine	1	20
1335	back	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1335.gif	exercise ball back extension with knees off ground	spine	2	5
1336	back	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1336.gif	exercise ball back extension with rotation	spine	8	10
1744	upper arms	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1744.gif	exercise ball dip	triceps	4	5
1559	upper legs	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1559.gif	exercise ball hip flexor stretch	glutes	9	20
1338	back	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1338.gif	exercise ball hug	spine	5	30
1339	back	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1339.gif	exercise ball lat stretch	lats	8	30
1341	back	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1341.gif	exercise ball lower back stretch (pyramid)	lats	10	15
1342	back	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1342.gif	exercise ball lying side lat stretch	lats	8	25
1382	lower legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1382.gif	exercise ball on the wall calf raise	calves	8	30
3241	lower legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/3241.gif	exercise ball on the wall calf raise (tennis ball between ankles)	calves	5	25
3240	lower legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/3240.gif	exercise ball on the wall calf raise (tennis ball between knees)	calves	6	10
1416	upper legs	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1416.gif	exercise ball one leg prone lower body rotation	glutes	3	25
1417	upper legs	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1417.gif	exercise ball one legged diagonal kick hamstring curl	glutes	3	30
1296	chest	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1296.gif	exercise ball pike push up	pectorals	4	30
1343	back	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1343.gif	exercise ball prone leg raise	spine	6	15
1560	upper legs	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1560.gif	exercise ball seated hamstring stretch	hamstrings	10	25
1745	upper arms	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1745.gif	exercise ball seated triceps stretch	triceps	2	5
1746	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/1746.gif	exercise ball supine triceps extension	triceps	10	30
1747	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/1747.gif	ez bar french press on exercise ball	triceps	7	30
3010	back	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/3010.gif	ez bar lying bent arms pullover	lats	10	5
1748	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/1748.gif	ez bar lying close grip triceps extension behind head	triceps	1	10
1344	back	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/1344.gif	ez bar reverse grip bent over row	upper back	10	10
1682	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/1682.gif	ez bar seated close grip concentration curl	biceps	9	20
1749	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/1749.gif	ez bar standing french press	triceps	6	25
445	shoulders	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/0445.gif	ez barbell anti gravity press	delts	3	20
1627	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/1627.gif	ez barbell close grip preacher curl	biceps	2	20
446	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/0446.gif	ez barbell close-grip curl	biceps	2	20
447	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/0447.gif	ez barbell curl	biceps	2	25
448	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/0448.gif	ez barbell decline close grip face press	triceps	2	15
2186	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/2186.gif	ez barbell decline triceps extension	triceps	4	15
449	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/0449.gif	ez barbell incline triceps extension	triceps	6	5
450	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/0450.gif	ez barbell jm bench press	triceps	1	15
451	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/0451.gif	ez barbell reverse grip curl	biceps	9	20
452	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/0452.gif	ez barbell reverse grip preacher curl	biceps	4	15
1458	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/1458.gif	ez barbell seated curls	biceps	4	5
453	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/0453.gif	ez barbell seated triceps extension	triceps	2	10
454	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/0454.gif	ez barbell spider curl	biceps	4	5
1628	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/1628.gif	ez barbell spider curl	biceps	3	25
2404	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/2404.gif	ez-bar biceps curl (with arm blaster)	biceps	1	5
2432	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/2432.gif	ez-bar close-grip bench press	triceps	1	30
2741	upper arms	ez barbell	http://d205bpvrqc9yn1.cloudfront.net/2741.gif	ez-barbell standing wide grip biceps curl	biceps	2	10
2133	upper legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/2133.gif	farmers walk	quads	5	15
455	lower arms	barbell	http://d205bpvrqc9yn1.cloudfront.net/0455.gif	finger curls	forearms	10	15
3303	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3303.gif	flag	abs	2	15
456	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0456.gif	flexion leg sit up (bent knee)	abs	7	20
457	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0457.gif	flexion leg sit up (straight arm)	abs	8	25
458	chest	barbell	http://d205bpvrqc9yn1.cloudfront.net/0458.gif	floor fly (with barbell)	pectorals	5	25
459	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0459.gif	flutter kicks	glutes	7	20
1472	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1472.gif	forward jump	quads	1	15
3470	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3470.gif	forward lunge (male)	glutes	7	30
3194	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/3194.gif	frankenstein squat	glutes	1	15
2429	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/2429.gif	frog crunch	abs	9	25
3301	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3301.gif	frog planche	abs	6	30
3296	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3296.gif	front lever	abs	6	15
3295	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3295.gif	front lever reps	upper back	5	30
464	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0464.gif	front plank with twist	abs	8	5
3315	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3315.gif	full maltese	abs	2	5
3299	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3299.gif	full planche	abs	10	5
3327	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/3327.gif	full planche push-up	pectorals	6	25
466	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0466.gif	gironda sternum chin	lats	8	20
3561	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3561.gif	glute bridge march	glutes	9	30
3523	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3523.gif	glute bridge two legs on bench (male)	glutes	6	10
3193	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3193.gif	glute-ham raise	hamstrings	6	30
467	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0467.gif	gorilla chin	abs	2	15
469	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0469.gif	groin crunch	abs	9	10
1383	lower legs	sled machine	http://d205bpvrqc9yn1.cloudfront.net/1383.gif	hack calf raise	calves	10	10
1384	lower legs	sled machine	http://d205bpvrqc9yn1.cloudfront.net/1384.gif	hack one leg calf raise	calves	3	25
3221	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3221.gif	half knee bends (male)	cardiovascular system	2	5
3202	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3202.gif	half sit-up (male)	abs	3	20
1511	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1511.gif	hamstring stretch	hamstrings	9	5
2139	chest	upper body ergometer	http://d205bpvrqc9yn1.cloudfront.net/2139.gif	hands bike	pectorals	4	30
3218	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3218.gif	hands clasped circular toe touch (male)	glutes	1	10
3215	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3215.gif	hands reversed clasped circular toe touch (male)	glutes	3	20
3302	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/3302.gif	handstand	triceps	9	25
471	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0471.gif	handstand push-up	triceps	5	30
1764	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/1764.gif	hanging leg hip raise	abs	8	10
472	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0472.gif	hanging leg raise	abs	9	5
1761	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/1761.gif	hanging oblique knee raise	abs	10	10
473	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0473.gif	hanging pike	abs	6	30
474	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0474.gif	hanging straight leg hip raise	abs	8	15
475	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0475.gif	hanging straight leg raise	abs	5	20
476	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0476.gif	hanging straight twisting leg hip raise	abs	7	15
3636	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3636.gif	high knee against wall	cardiovascular system	5	15
484	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0484.gif	hip raise (bent knee)	abs	9	20
1418	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1418.gif	hug keens to chest	glutes	3	20
3234	chest	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/3234.gif	hyght dumbbell fly	pectorals	6	5
489	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0489.gif	hyperextension	spine	1	5
488	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0488.gif	hyperextension (on bench)	spine	3	15
3289	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/3289.gif	impossible dips	triceps	4	20
1471	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/1471.gif	inchworm	abs	9	10
3698	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3698.gif	inchworm v. 2	abs	5	30
490	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0490.gif	incline close-grip push-up	triceps	4	15
491	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0491.gif	incline leg hip raise (leg straight)	abs	6	25
492	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/0492.gif	incline push up depth jump	pectorals	4	30
493	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/0493.gif	incline push-up	pectorals	10	15
3785	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/3785.gif	incline push-up (on box)	pectorals	6	30
494	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/0494.gif	incline reverse grip push-up	pectorals	9	25
3011	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/3011.gif	incline scapula push up	serratus anterior	3	10
495	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0495.gif	incline twisting sit-up	abs	3	15
1564	upper legs	rope	http://d205bpvrqc9yn1.cloudfront.net/1564.gif	intermediate hip flexor and quad stretch	quads	8	15
496	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0496.gif	inverse leg curl (bench support)	hamstrings	2	15
2400	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/2400.gif	inverse leg curl (on pull-up cable machine)	hamstrings	9	25
499	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0499.gif	inverted row	upper back	2	25
2300	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/2300.gif	inverted row bent knees	upper back	4	5
2298	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/2298.gif	inverted row on bench	upper back	9	30
497	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0497.gif	inverted row v. 2	upper back	3	25
498	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0498.gif	inverted row with straps	upper back	7	5
1419	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1419.gif	iron cross stretch	glutes	9	15
1297	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/1297.gif	isometric chest squeeze	pectorals	9	20
500	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/0500.gif	isometric wipers	pectorals	5	25
501	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/0501.gif	jack burpee	cardiovascular system	4	15
3224	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3224.gif	jack jump (male)	cardiovascular system	2	10
507	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0507.gif	jackknife sit-up	abs	8	20
508	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0508.gif	janda sit-up	abs	6	20
2612	cardio	rope	http://d205bpvrqc9yn1.cloudfront.net/2612.gif	jump rope	cardiovascular system	10	10
514	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0514.gif	jump squat	glutes	4	25
513	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0513.gif	jump squat v. 2	glutes	4	15
517	waist	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0517.gif	kettlebell advanced windmill	abs	1	15
518	lower arms	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0518.gif	kettlebell alternating hang clean	forearms	7	5
520	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0520.gif	kettlebell alternating press	delts	7	25
519	chest	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0519.gif	kettlebell alternating press on floor	pectorals	7	5
521	back	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0521.gif	kettlebell alternating renegade row	upper back	7	15
522	back	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0522.gif	kettlebell alternating row	upper back	4	15
523	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0523.gif	kettlebell arnold press	delts	6	30
524	waist	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0524.gif	kettlebell bent press	abs	3	25
525	upper arms	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0525.gif	kettlebell bottoms up clean from the hang position	biceps	1	30
526	upper arms	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0526.gif	kettlebell double alternating hang clean	biceps	10	25
527	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0527.gif	kettlebell double jerk	delts	1	15
528	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0528.gif	kettlebell double push press	delts	6	15
529	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0529.gif	kettlebell double snatch	delts	6	10
530	waist	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0530.gif	kettlebell double windmill	abs	3	25
2329	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/2329.gif	spine twist	abs	8	15
531	chest	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0531.gif	kettlebell extended range one arm press on floor	pectorals	7	15
532	waist	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0532.gif	kettlebell figure 8	abs	10	5
533	upper legs	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0533.gif	kettlebell front squat	glutes	3	10
534	upper legs	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0534.gif	kettlebell goblet squat	glutes	8	5
535	upper legs	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0535.gif	kettlebell hang clean	hamstrings	8	10
536	upper legs	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0536.gif	kettlebell lunge pass through	glutes	3	5
537	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0537.gif	kettlebell one arm clean and jerk	delts	10	30
1298	chest	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/1298.gif	kettlebell one arm floor press	pectorals	8	5
538	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0538.gif	kettlebell one arm jerk	delts	1	10
539	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0539.gif	kettlebell one arm military press to the side	delts	3	20
540	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0540.gif	kettlebell one arm push press	delts	9	15
541	back	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0541.gif	kettlebell one arm row	upper back	9	30
542	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0542.gif	kettlebell one arm snatch	delts	3	15
543	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0543.gif	kettlebell pirate supper legs	delts	10	15
544	upper legs	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0544.gif	kettlebell pistol squat	glutes	2	10
545	chest	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0545.gif	kettlebell plyo push-up	pectorals	5	15
546	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0546.gif	kettlebell seated press	delts	9	25
1438	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/1438.gif	kettlebell seated two arm military press	delts	5	15
547	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0547.gif	kettlebell seesaw press	delts	6	30
548	back	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0548.gif	kettlebell sumo high pull	traps	8	30
549	upper legs	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0549.gif	kettlebell swing	glutes	3	5
550	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0550.gif	kettlebell thruster	delts	9	15
551	upper legs	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0551.gif	kettlebell turkish get up (squat style)	glutes	8	15
552	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0552.gif	kettlebell two arm clean	delts	10	30
553	shoulders	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0553.gif	kettlebell two arm military press	delts	10	20
1345	back	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/1345.gif	kettlebell two arm row	upper back	8	25
554	waist	kettlebell	http://d205bpvrqc9yn1.cloudfront.net/0554.gif	kettlebell windmill	abs	1	30
555	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0555.gif	kick out sit	hamstrings	5	5
558	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0558.gif	kipping muscle up	lats	1	15
3640	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3640.gif	knee touch crunch	abs	10	25
1420	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/1420.gif	kneeling jump squat	glutes	1	25
1346	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1346.gif	kneeling lat stretch	lats	9	10
3239	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3239.gif	kneeling plank tap shoulder (male)	abs	1	5
3211	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/3211.gif	kneeling push-up (male)	pectorals	1	15
3288	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/3288.gif	korean dips	pectorals	4	5
3418	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3418.gif	l-pull-up	lats	4	5
3419	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3419.gif	l-sit on floor	abs	8	30
562	waist	barbell	http://d205bpvrqc9yn1.cloudfront.net/0562.gif	landmine 180	abs	7	15
3237	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/3237.gif	landmine lateral raise	delts	3	20
3300	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3300.gif	lean planche	abs	7	10
2271	shoulders	body weight	http://d205bpvrqc9yn1.cloudfront.net/2271.gif	left hook. boxing	delts	1	30
570	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0570.gif	leg pull in flat bench	abs	2	25
1576	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1576.gif	leg up hamstring stretch	hamstrings	7	10
2287	upper legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/2287.gif	lever alternate leg press 	quads	5	10
571	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0571.gif	lever alternating narrow grip seated row 	upper back	8	25
572	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0572.gif	lever assisted chin-up	lats	3	5
573	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0573.gif	lever back extension	spine	8	25
574	back	barbell	http://d205bpvrqc9yn1.cloudfront.net/0574.gif	lever bent over row 	upper back	5	30
3200	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/3200.gif	lever bent-over row with v-bar 	upper back	5	20
575	upper arms	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0575.gif	lever bicep curl	biceps	5	20
2289	lower legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/2289.gif	lever calf press 	calves	6	20
577	chest	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0577.gif	lever chest press	pectorals	2	25
576	chest	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0576.gif	lever chest press 	pectorals	6	5
1455	chest	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1455.gif	lever chest press v. 2	pectorals	10	5
578	upper legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0578.gif	lever deadlift 	glutes	3	25
1300	chest	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1300.gif	lever decline chest press	pectorals	10	10
1253	lower legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1253.gif	lever donkey calf raise	calves	2	15
579	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0579.gif	lever front pulldown	lats	10	15
580	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0580.gif	lever gripless shrug	traps	7	20
1439	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1439.gif	lever gripless shrug v. 2	traps	5	10
2288	lower arms	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/2288.gif	lever gripper hands 	forearms	1	15
1615	upper arms	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1615.gif	lever hammer grip preacher curl	biceps	8	15
581	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0581.gif	lever high row 	upper back	9	20
2286	upper legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/2286.gif	lever hip extension v. 2	glutes	2	30
2611	upper legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/2611.gif	lever horizontal one leg press	glutes	2	20
1299	chest	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1299.gif	lever incline chest press	pectorals	3	10
1479	chest	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1479.gif	lever incline chest press v. 2	pectorals	3	20
582	upper legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0582.gif	lever kneeling leg curl 	hamstrings	3	15
583	waist	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0583.gif	lever kneeling twist	abs	6	10
584	shoulders	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0584.gif	lever lateral raise	delts	5	15
585	upper legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0585.gif	lever leg extension	quads	7	10
586	upper legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0586.gif	lever lying leg curl	hamstrings	6	25
3195	upper legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/3195.gif	lever lying two-one leg curl	hamstrings	3	5
587	shoulders	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0587.gif	lever military press 	delts	1	25
588	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0588.gif	lever narrow grip seated row 	upper back	3	20
589	back	barbell	http://d205bpvrqc9yn1.cloudfront.net/0589.gif	lever one arm bent over row 	upper back	9	15
1356	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1356.gif	lever one arm lateral high row	upper back	5	25
1347	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1347.gif	lever one arm lateral wide pulldown 	lats	7	15
590	shoulders	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0590.gif	lever one arm shoulder press 	delts	9	15
591	upper arms	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0591.gif	lever overhand triceps dip	triceps	5	15
592	upper arms	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0592.gif	lever preacher curl	biceps	4	15
1614	upper arms	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1614.gif	lever preacher curl v. 2	biceps	7	15
2285	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/2285.gif	lever pullover 	lats	9	25
2736	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/2736.gif	lever reverse grip lateral pulldown 	lats	10	20
1616	upper arms	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1616.gif	lever reverse grip preacher curl	biceps	6	25
1348	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1348.gif	lever reverse grip vertical row	upper back	10	5
593	upper legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0593.gif	lever reverse hyperextension 	glutes	6	30
1349	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1349.gif	lever reverse t-bar row	upper back	3	10
2315	lower legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/2315.gif	lever rotary calf	calves	6	15
2335	lower legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/2335.gif	lever seated calf press	calves	1	20
594	lower legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0594.gif	lever seated calf raise 	calves	5	25
1452	waist	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1452.gif	lever seated crunch	abs	6	25
595	waist	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0595.gif	lever seated crunch (chest pad)	abs	9	25
3760	waist	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/3760.gif	lever seated crunch v. 2	abs	6	30
1451	upper arms	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1451.gif	lever seated dip	triceps	3	25
596	chest	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0596.gif	lever seated fly	pectorals	7	15
3759	upper legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/3759.gif	lever seated good morning	glutes	5	20
597	upper legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0597.gif	lever seated hip abduction	abductors	7	30
598	upper legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0598.gif	lever seated hip adduction	adductors	7	25
599	upper legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0599.gif	lever seated leg curl	hamstrings	6	25
600	waist	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0600.gif	lever seated leg raise crunch 	abs	7	30
602	shoulders	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0602.gif	lever seated reverse fly	delts	2	20
601	shoulders	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0601.gif	lever seated reverse fly (parallel grip)	delts	9	10
1350	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1350.gif	lever seated row	upper back	10	20
1454	shoulders	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1454.gif	lever seated shoulder press	delts	8	15
1385	lower legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1385.gif	lever seated squat calf raise on leg press machine	calves	5	10
1453	waist	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1453.gif	lever seated twist	abs	8	15
603	shoulders	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0603.gif	lever shoulder press 	delts	4	10
869	shoulders	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0869.gif	lever shoulder press  v. 2	delts	10	20
2318	shoulders	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/2318.gif	lever shoulder press  v. 3	delts	1	20
604	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0604.gif	lever shrug 	traps	1	25
605	lower legs	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0605.gif	lever standing calf raise	calves	9	5
3758	chest	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/3758.gif	lever standing chest press	pectorals	3	15
606	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0606.gif	lever t bar row 	upper back	9	5
1351	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1351.gif	lever t-bar reverse grip row	upper back	8	30
607	upper arms	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0607.gif	lever triceps extension	triceps	10	30
1313	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1313.gif	lever unilateral row	upper back	9	15
609	back	rope	http://d205bpvrqc9yn1.cloudfront.net/0609.gif	london bridge	upper back	7	30
3013	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3013.gif	low glute bridge on floor	glutes	6	25
1352	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1352.gif	lower back curl	spine	10	20
3582	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3582.gif	lunge with jump	glutes	3	30
1688	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/1688.gif	lunge with twist	abs	3	10
613	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0613.gif	lying (side) quads stretch	quads	9	30
2312	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/2312.gif	lying elbow to knee	abs	7	25
620	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0620.gif	lying leg raise flat bench	abs	10	25
865	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0865.gif	lying leg-hip raise	abs	7	15
1301	chest	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/1301.gif	machine inner chest press	pectorals	3	10
624	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0624.gif	march sit (wall)	glutes	7	25
1353	back	medicine ball	http://d205bpvrqc9yn1.cloudfront.net/1353.gif	medicine ball catch and overhead throw	lats	10	15
1302	chest	medicine ball	http://d205bpvrqc9yn1.cloudfront.net/1302.gif	medicine ball chest pass	pectorals	2	5
1303	chest	medicine ball	http://d205bpvrqc9yn1.cloudfront.net/1303.gif	medicine ball chest push from 3 point stance	pectorals	4	5
1304	chest	medicine ball	http://d205bpvrqc9yn1.cloudfront.net/1304.gif	medicine ball chest push multiple response	pectorals	8	5
1305	chest	medicine ball	http://d205bpvrqc9yn1.cloudfront.net/1305.gif	medicine ball chest push single response	pectorals	8	15
1312	chest	medicine ball	http://d205bpvrqc9yn1.cloudfront.net/1312.gif	medicine ball chest push with run release	pectorals	2	5
1701	upper arms	medicine ball	http://d205bpvrqc9yn1.cloudfront.net/1701.gif	medicine ball close grip push up	triceps	2	30
1354	back	medicine ball	http://d205bpvrqc9yn1.cloudfront.net/1354.gif	medicine ball overhead slam	upper back	2	5
1750	upper arms	medicine ball	http://d205bpvrqc9yn1.cloudfront.net/1750.gif	medicine ball supine chest throw	triceps	10	5
627	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0627.gif	mixed grip chin-up	lats	7	5
3217	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/3217.gif	modified hindu push-up (male)	pectorals	6	20
1421	lower arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/1421.gif	modified push up to lower arms	forearms	1	30
628	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0628.gif	monster walk	glutes	10	30
630	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/0630.gif	mountain climber	cardiovascular system	5	30
631	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0631.gif	muscle up	lats	7	25
1401	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1401.gif	muscle-up (on vertical bar)	lats	9	10
2328	upper arms	stability ball	http://d205bpvrqc9yn1.cloudfront.net/2328.gif	narrow push-up on exercise ball	triceps	6	10
1403	neck	body weight	http://d205bpvrqc9yn1.cloudfront.net/1403.gif	neck side stretch	levator scapulae	8	5
634	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0634.gif	negative crunch	abs	10	20
1495	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/1495.gif	oblique crunch v. 2	abs	1	20
635	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0635.gif	oblique crunches floor	abs	5	25
636	upper arms	olympic barbell	http://d205bpvrqc9yn1.cloudfront.net/0636.gif	olympic barbell hammer curl	biceps	10	10
637	upper arms	olympic barbell	http://d205bpvrqc9yn1.cloudfront.net/0637.gif	olympic barbell triceps extension	triceps	3	25
1355	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1355.gif	one arm against wall	lats	10	10
638	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0638.gif	one arm chin-up	lats	10	20
639	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0639.gif	one arm dip	triceps	3	30
640	waist	medicine ball	http://d205bpvrqc9yn1.cloudfront.net/0640.gif	one arm slam (with medicine ball)	abs	2	5
1773	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1773.gif	one arm towel row	upper back	9	10
1386	lower legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1386.gif	one leg donkey calf raise	calves	8	5
1387	lower legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1387.gif	one leg floor calf raise	calves	8	20
1476	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1476.gif	one leg squat	glutes	4	30
641	waist	weighted	http://d205bpvrqc9yn1.cloudfront.net/0641.gif	otis up	abs	7	25
642	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0642.gif	outside leg kick push-up	glutes	1	20
643	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0643.gif	overhead triceps stretch	triceps	6	15
3147	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3147.gif	pelvic tilt	abs	6	30
1422	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1422.gif	pelvic tilt into bridge	glutes	8	15
1388	lower legs	rope	http://d205bpvrqc9yn1.cloudfront.net/1388.gif	peroneals stretch	calves	5	20
3662	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3662.gif	pike-to-cobra push-up	glutes	5	30
1306	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/1306.gif	plyo push up	pectorals	9	25
1687	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/1687.gif	posterior step to overhead reach	abs	6	20
1389	lower legs	rope	http://d205bpvrqc9yn1.cloudfront.net/1389.gif	posterior tibialis stretch	calves	1	20
3132	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3132.gif	potty squat with support	glutes	1	20
648	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0648.gif	power clean	hamstrings	9	20
3665	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3665.gif	power point plank	abs	5	10
3203	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3203.gif	prisoner half sit-up (male)	abs	3	10
1707	waist	stability ball	http://d205bpvrqc9yn1.cloudfront.net/1707.gif	prone twist on stability ball	abs	4	5
651	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0651.gif	pull up (neutral grip)	lats	10	20
650	waist	stability ball	http://d205bpvrqc9yn1.cloudfront.net/0650.gif	pull-in (on stability ball)	abs	7	20
652	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0652.gif	pull-up	lats	4	15
1689	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/1689.gif	push and pull bodyweight	pectorals	8	25
3638	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3638.gif	push to run	cardiovascular system	1	30
1307	chest	bosu ball	http://d205bpvrqc9yn1.cloudfront.net/1307.gif	push up on bosu ball	pectorals	10	15
662	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/0662.gif	push-up	pectorals	5	30
653	chest	bosu ball	http://d205bpvrqc9yn1.cloudfront.net/0653.gif	push-up (bosu ball)	pectorals	9	20
655	chest	stability ball	http://d205bpvrqc9yn1.cloudfront.net/0655.gif	push-up (on stability ball)	pectorals	10	5
656	chest	stability ball	http://d205bpvrqc9yn1.cloudfront.net/0656.gif	push-up (on stability ball)	pectorals	5	30
659	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/0659.gif	push-up (wall)	pectorals	10	30
658	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/0658.gif	push-up (wall) v. 2	pectorals	6	20
660	upper arms	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0660.gif	push-up close-grip off dumbbell	triceps	1	15
661	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0661.gif	push-up inside leg kick	glutes	4	20
663	chest	medicine ball	http://d205bpvrqc9yn1.cloudfront.net/0663.gif	push-up medicine ball	pectorals	5	25
1467	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/1467.gif	push-up on lower arms	triceps	7	20
3145	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/3145.gif	push-up plus	pectorals	8	20
664	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0664.gif	push-up to side plank	abs	9	10
3533	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3533.gif	quads	quads	8	25
3201	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3201.gif	quarter sit-up	abs	9	5
3552	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3552.gif	quick feet v. 2	quads	8	25
666	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/0666.gif	raise single arm push-up	pectorals	5	5
668	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0668.gif	rear decline bridge	glutes	8	5
669	shoulders	body weight	http://d205bpvrqc9yn1.cloudfront.net/0669.gif	rear deltoid stretch	delts	3	5
670	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0670.gif	rear pull-up	lats	10	10
1582	upper legs	rope	http://d205bpvrqc9yn1.cloudfront.net/1582.gif	reclining big toe pose with rope	hamstrings	3	15
3236	upper legs	resistance band	http://d205bpvrqc9yn1.cloudfront.net/3236.gif	resistance band hip thrusts on knees (female)	glutes	1	25
3007	upper legs	resistance band	http://d205bpvrqc9yn1.cloudfront.net/3007.gif	resistance band leg extension	quads	3	20
3123	upper arms	resistance band	http://d205bpvrqc9yn1.cloudfront.net/3123.gif	resistance band seated biceps curl	biceps	3	5
3124	chest	resistance band	http://d205bpvrqc9yn1.cloudfront.net/3124.gif	resistance band seated chest press	pectorals	3	10
3006	upper legs	resistance band	http://d205bpvrqc9yn1.cloudfront.net/3006.gif	resistance band seated hip abduction	abductors	2	5
3122	shoulders	resistance band	http://d205bpvrqc9yn1.cloudfront.net/3122.gif	resistance band seated shoulder press	delts	10	20
3144	back	resistance band	http://d205bpvrqc9yn1.cloudfront.net/3144.gif	resistance band seated straight back row	upper back	4	15
872	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0872.gif	reverse crunch	abs	9	5
672	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0672.gif	reverse dip	triceps	2	15
673	back	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0673.gif	reverse grip machine lat pulldown	lats	9	5
674	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0674.gif	reverse grip pull-up	lats	5	20
675	upper legs	stability ball	http://d205bpvrqc9yn1.cloudfront.net/0675.gif	reverse hyper extension (on stability ball)	glutes	1	10
1423	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1423.gif	reverse hyper on flat bench	glutes	9	20
3663	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3663.gif	reverse plank with leg lift	abs	8	20
677	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0677.gif	ring dips	triceps	6	10
2571	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/2571.gif	rocking frog stretch	glutes	2	20
678	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0678.gif	rocky pull-up pulldown	lats	5	5
2208	back	roller	http://d205bpvrqc9yn1.cloudfront.net/2208.gif	roller back stretch	spine	8	20
2204	waist	roller	http://d205bpvrqc9yn1.cloudfront.net/2204.gif	roller body saw	abs	10	15
2205	upper legs	roller	http://d205bpvrqc9yn1.cloudfront.net/2205.gif	roller hip lat stretch	glutes	10	20
2202	upper legs	roller	http://d205bpvrqc9yn1.cloudfront.net/2202.gif	roller hip stretch	glutes	6	15
2206	waist	roller	http://d205bpvrqc9yn1.cloudfront.net/2206.gif	roller reverse crunch	abs	9	25
2203	chest	roller	http://d205bpvrqc9yn1.cloudfront.net/2203.gif	roller seated shoulder flexor depresor retractor	pectorals	6	20
2209	chest	roller	http://d205bpvrqc9yn1.cloudfront.net/2209.gif	roller seated single leg shoulder flexor depresor retractor	pectorals	10	20
2207	back	roller	http://d205bpvrqc9yn1.cloudfront.net/2207.gif	roller side lat stretch	lats	7	25
680	back	rope	http://d205bpvrqc9yn1.cloudfront.net/0680.gif	rope climb	upper back	8	15
685	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/0685.gif	run	cardiovascular system	6	25
684	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/0684.gif	run (equipment)	cardiovascular system	6	5
1585	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1585.gif	runners stretch	hamstrings	2	20
687	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0687.gif	russian twist	abs	9	10
3012	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3012.gif	scapula dips	traps	2	5
3021	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/3021.gif	scapula push-up	serratus anterior	5	30
688	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0688.gif	scapular pull-up	traps	9	30
3219	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3219.gif	scissor jumps (male)	cardiovascular system	6	5
1390	lower legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1390.gif	seated calf stretch (male)	calves	5	20
1424	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1424.gif	seated glute stretch	glutes	7	25
689	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0689.gif	seated leg raise	abs	2	25
690	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0690.gif	seated lower back stretch	lats	9	30
2567	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/2567.gif	seated piriformis stretch	glutes	2	25
691	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0691.gif	seated side crunch (wall)	abs	2	10
1587	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1587.gif	seated wide angle pose sequence	hamstrings	1	10
697	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0697.gif	self assisted inverse leg curl	hamstrings	3	5
1766	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1766.gif	self assisted inverse leg curl	hamstrings	4	30
696	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0696.gif	self assisted inverse leg curl (on floor)	hamstrings	4	25
3222	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3222.gif	semi squat jump (male)	cardiovascular system	5	30
3656	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3656.gif	short stride run	cardiovascular system	6	5
1763	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1763.gif	shoulder grip pull-up	lats	9	30
3699	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3699.gif	shoulder tap	abs	1	5
699	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/0699.gif	shoulder tap push-up	pectorals	6	15
1774	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1774.gif	side bridge hip abduction	abductors	9	25
705	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0705.gif	side bridge v. 2	abs	4	10
709	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0709.gif	side hip (on parallel bars)	abs	9	25
710	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0710.gif	side hip abduction	abductors	4	15
1358	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1358.gif	side lying floor stretch	lats	10	20
3667	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3667.gif	side lying hip adduction (male)	adductors	9	20
1775	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1775.gif	side plank hip adduction	adductors	4	15
716	neck	body weight	http://d205bpvrqc9yn1.cloudfront.net/0716.gif	side push neck stretch	levator scapulae	6	25
717	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0717.gif	side push-up	triceps	3	15
721	lower arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0721.gif	side wrist pull stretch	forearms	5	5
720	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0720.gif	side-to-side chin	lats	1	25
3213	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3213.gif	side-to-side toe touch (male)	abs	2	10
725	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/0725.gif	single arm push-up	pectorals	6	15
3645	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3645.gif	single leg bridge with outstretched leg	glutes	6	5
727	lower legs	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0727.gif	single leg calf raise (on a dumbbell)	calves	7	20
730	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0730.gif	single leg platform slide	hamstrings	5	25
1759	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1759.gif	single leg squat (pistol) male	glutes	8	5
1489	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1489.gif	sissy squat	quads	4	10
735	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0735.gif	sit-up v. 2	abs	6	20
3679	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3679.gif	sit-up with arms on chest	abs	3	15
3361	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3361.gif	skater hops	cardiovascular system	6	30
2142	upper arms	skierg machine	http://d205bpvrqc9yn1.cloudfront.net/2142.gif	ski ergometer	triceps	2	15
3671	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3671.gif	ski step	cardiovascular system	4	30
3304	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3304.gif	skin the cat	upper back	4	30
1425	upper legs	sled machine	http://d205bpvrqc9yn1.cloudfront.net/1425.gif	sled 45 degrees one leg press	glutes	3	5
738	lower legs	sled machine	http://d205bpvrqc9yn1.cloudfront.net/0738.gif	sled 45в° calf press	calves	5	30
739	upper legs	sled machine	http://d205bpvrqc9yn1.cloudfront.net/0739.gif	sled 45в° leg press	glutes	10	5
1464	upper legs	sled machine	http://d205bpvrqc9yn1.cloudfront.net/1464.gif	sled 45в° leg press (back pov)	glutes	9	20
1463	upper legs	sled machine	http://d205bpvrqc9yn1.cloudfront.net/1463.gif	sled 45в° leg press (side pov)	glutes	7	20
740	upper legs	sled machine	http://d205bpvrqc9yn1.cloudfront.net/0740.gif	sled 45в° leg wide press	glutes	2	15
1391	lower legs	sled machine	http://d205bpvrqc9yn1.cloudfront.net/1391.gif	sled calf press on leg press	calves	5	5
741	upper legs	sled machine	http://d205bpvrqc9yn1.cloudfront.net/0741.gif	sled closer hack squat	glutes	2	15
742	lower legs	sled machine	http://d205bpvrqc9yn1.cloudfront.net/0742.gif	sled forward angled calf raise	calves	5	30
743	upper legs	sled machine	http://d205bpvrqc9yn1.cloudfront.net/0743.gif	sled hack squat	glutes	5	10
2334	lower legs	sled machine	http://d205bpvrqc9yn1.cloudfront.net/2334.gif	sled lying calf press	calves	1	20
744	upper legs	sled machine	http://d205bpvrqc9yn1.cloudfront.net/0744.gif	sled lying squat	glutes	9	5
1392	lower legs	sled machine	http://d205bpvrqc9yn1.cloudfront.net/1392.gif	sled one leg calf press on leg press	calves	7	25
1496	waist	hammer	http://d205bpvrqc9yn1.cloudfront.net/1496.gif	sledge hammer	abs	5	10
746	back	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0746.gif	smith back shrug	traps	4	30
747	shoulders	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0747.gif	smith behind neck press	delts	2	20
748	chest	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0748.gif	smith bench press	pectorals	9	25
749	upper legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0749.gif	smith bent knee good morning	glutes	3	25
1359	back	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1359.gif	smith bent over row	upper back	5	30
750	upper legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0750.gif	smith chair squat	quads	3	15
751	upper arms	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0751.gif	smith close-grip bench press	triceps	4	15
752	upper legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0752.gif	smith deadlift	glutes	1	15
753	chest	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0753.gif	smith decline bench press	pectorals	6	25
754	chest	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0754.gif	smith decline reverse-grip press	pectorals	10	25
1433	upper legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1433.gif	smith front squat (clean grip)	glutes	2	15
3281	upper legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/3281.gif	smith full squat	glutes	10	25
755	upper legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0755.gif	smith hack squat	glutes	5	20
756	waist	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0756.gif	smith hip raise	abs	4	15
757	chest	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0757.gif	smith incline bench press	pectorals	10	10
758	chest	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0758.gif	smith incline reverse-grip press	pectorals	1	10
759	chest	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0759.gif	smith incline shoulder raises	serratus anterior	2	15
760	upper legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0760.gif	smith leg press	glutes	10	5
1434	upper legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1434.gif	smith low bar squat	glutes	2	30
1683	upper arms	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1683.gif	smith machine bicep curl	biceps	6	20
1625	upper arms	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1625.gif	smith machine decline close grip bench press	triceps	5	10
1752	upper arms	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1752.gif	smith machine incline tricep extension	triceps	4	20
1626	chest	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1626.gif	smith machine reverse decline close grip bench press	pectorals	1	20
761	back	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0761.gif	smith narrow row	upper back	7	15
1360	back	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1360.gif	smith one arm row	upper back	1	30
1393	lower legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1393.gif	smith one leg floor calf raise	calves	1	15
762	shoulders	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0762.gif	smith rear delt row	delts	5	15
763	lower legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0763.gif	smith reverse calf raises	calves	10	20
1394	lower legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1394.gif	smith reverse calf raises	calves	4	10
1361	back	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1361.gif	smith reverse grip bent over row	upper back	2	20
764	chest	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0764.gif	smith reverse-grip press	pectorals	5	5
1395	lower legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1395.gif	smith seated one leg calf raise	calves	7	15
765	shoulders	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0765.gif	smith seated shoulder press	delts	5	15
1426	lower arms	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1426.gif	smith seated wrist curl	forearms	1	10
766	shoulders	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0766.gif	smith shoulder press	delts	6	20
767	back	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0767.gif	smith shrug	traps	6	20
768	upper legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0768.gif	smith single leg split squat	quads	1	10
769	upper legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0769.gif	smith sprint lunge	glutes	9	15
770	upper legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0770.gif	smith squat	glutes	4	5
771	lower arms	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0771.gif	smith standing back wrist curl	forearms	1	30
772	shoulders	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0772.gif	smith standing behind head military press	delts	9	30
773	lower legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0773.gif	smith standing leg calf raise	calves	7	10
774	shoulders	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0774.gif	smith standing military press	delts	3	30
3142	upper legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/3142.gif	smith sumo squat	glutes	8	15
1396	lower legs	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1396.gif	smith toe raise	calves	3	10
775	shoulders	smith machine	http://d205bpvrqc9yn1.cloudfront.net/0775.gif	smith upright row	delts	7	5
1308	chest	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1308.gif	smith wide grip bench press	pectorals	7	20
1309	chest	smith machine	http://d205bpvrqc9yn1.cloudfront.net/1309.gif	smith wide grip decline bench press	pectorals	6	5
776	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0776.gif	snatch pull	quads	6	25
777	waist	dumbbell	http://d205bpvrqc9yn1.cloudfront.net/0777.gif	spell caster	abs	7	10
1362	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1362.gif	sphinx	spine	1	15
778	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0778.gif	spider crawl push up	glutes	2	10
1363	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1363.gif	spine stretch	spine	4	25
2368	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/2368.gif	split squats	quads	2	20
786	upper legs	barbell	http://d205bpvrqc9yn1.cloudfront.net/0786.gif	squat jerk	quads	6	30
1705	upper legs	bosu ball	http://d205bpvrqc9yn1.cloudfront.net/1705.gif	squat on bosu ball	quads	3	30
1685	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1685.gif	squat to overhead reach	quads	6	10
1686	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1686.gif	squat to overhead reach with twist	quads	2	5
2297	waist	stability ball	http://d205bpvrqc9yn1.cloudfront.net/2297.gif	stability ball crunch (full range hands behind head)	abs	5	10
3291	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/3291.gif	stalder press	triceps	3	20
3669	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3669.gif	standing archer	upper back	5	5
788	shoulders	barbell	http://d205bpvrqc9yn1.cloudfront.net/0788.gif	standing behind neck press	delts	2	25
1490	lower legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1490.gif	standing calf raise (on a staircase)	calves	7	5
1397	lower legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1397.gif	standing calves	calves	2	20
1398	lower legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1398.gif	standing calves calf stretch	calves	9	10
1599	upper legs	rope	http://d205bpvrqc9yn1.cloudfront.net/1599.gif	standing hamstring and calf stretch with strap	hamstrings	5	15
794	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0794.gif	standing lateral stretch	lats	3	5
1364	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1364.gif	standing pelvic tilt	spine	4	10
795	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0795.gif	standing single leg curl	hamstrings	4	25
796	waist	wheel roller	http://d205bpvrqc9yn1.cloudfront.net/0796.gif	standing wheel rollerout	abs	7	5
3223	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3223.gif	star jump (male)	cardiovascular system	1	30
2138	cardio	stationary bike	http://d205bpvrqc9yn1.cloudfront.net/2138.gif	stationary bike run v. 3	cardiovascular system	10	10
798	cardio	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/0798.gif	stationary bike walk	cardiovascular system	9	10
3314	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3314.gif	straddle maltese	abs	9	10
3298	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3298.gif	straddle planche	abs	4	5
1427	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1427.gif	straight leg outer hip abductor	abductors	4	15
803	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/0803.gif	superman push-up	pectorals	1	15
805	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0805.gif	suspended abdominal fallout	abs	6	20
806	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/0806.gif	suspended push-up	pectorals	10	20
807	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0807.gif	suspended reverse crunch	abs	2	5
808	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/0808.gif	suspended row	upper back	10	5
809	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/0809.gif	suspended split squat	quads	6	15
3433	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/3433.gif	swimmer kicks v. 2 (male)	glutes	5	15
3318	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3318.gif	swing 360	cardiovascular system	7	20
1753	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/1753.gif	three bench dip	triceps	2	20
2459	upper legs	tire	http://d205bpvrqc9yn1.cloudfront.net/2459.gif	tire flip	glutes	6	20
811	upper legs	trap bar	http://d205bpvrqc9yn1.cloudfront.net/0811.gif	trap bar deadlift	glutes	4	30
814	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0814.gif	triceps dip	triceps	10	10
812	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0812.gif	triceps dip (bench leg)	triceps	10	25
813	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0813.gif	triceps dip (between benches)	triceps	5	30
815	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0815.gif	triceps dips floor	triceps	8	5
816	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0816.gif	triceps press	triceps	6	25
817	upper arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/0817.gif	triceps stretch	triceps	10	15
871	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0871.gif	tuck crunch	abs	5	25
818	back	cable	http://d205bpvrqc9yn1.cloudfront.net/0818.gif	twin handle parallel grip lat pulldown	lats	6	20
1466	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1466.gif	twist hip lift	glutes	9	5
2802	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/2802.gif	twisted leg raise	abs	2	25
2801	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/2801.gif	twisted leg raise (female)	abs	4	20
3231	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/3231.gif	two toe touch (male)	spine	10	20
1365	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1365.gif	upper back stretch	upper back	5	10
1366	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1366.gif	upward facing dog	spine	8	10
3420	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/3420.gif	v-sit on floor	abs	10	25
826	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0826.gif	vertical leg raise (on parallel bars)	abs	10	5
2141	cardio	elliptical machine	http://d205bpvrqc9yn1.cloudfront.net/2141.gif	walk elliptical cross trainer	cardiovascular system	1	10
3655	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3655.gif	walking high knees lunge	cardiovascular system	5	5
1460	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1460.gif	walking lunge	glutes	6	15
3666	cardio	leverage machine	http://d205bpvrqc9yn1.cloudfront.net/3666.gif	walking on incline treadmill	cardiovascular system	5	30
2311	cardio	stepmill machine	http://d205bpvrqc9yn1.cloudfront.net/2311.gif	walking on stepmill	cardiovascular system	9	15
830	upper arms	weighted	http://d205bpvrqc9yn1.cloudfront.net/0830.gif	weighted bench dip	triceps	7	30
2987	back	weighted	http://d205bpvrqc9yn1.cloudfront.net/2987.gif	weighted close grip chin-up on dip cage	lats	1	30
3643	upper legs	weighted	http://d205bpvrqc9yn1.cloudfront.net/3643.gif	weighted cossack squats (male)	glutes	8	5
832	waist	weighted	http://d205bpvrqc9yn1.cloudfront.net/0832.gif	weighted crunch	abs	1	10
3670	waist	weighted	http://d205bpvrqc9yn1.cloudfront.net/3670.gif	weighted decline sit-up	abs	3	5
833	lower legs	weighted	http://d205bpvrqc9yn1.cloudfront.net/0833.gif	weighted donkey calf raise	calves	4	25
1310	chest	weighted	http://d205bpvrqc9yn1.cloudfront.net/1310.gif	weighted drop push up	pectorals	8	5
2135	waist	weighted	http://d205bpvrqc9yn1.cloudfront.net/2135.gif	weighted front plank	abs	5	10
834	shoulders	weighted	http://d205bpvrqc9yn1.cloudfront.net/0834.gif	weighted front raise	delts	2	10
866	waist	weighted	http://d205bpvrqc9yn1.cloudfront.net/0866.gif	weighted hanging leg-hip raise	abs	9	10
835	back	weighted	http://d205bpvrqc9yn1.cloudfront.net/0835.gif	weighted hyperextension (on stability ball)	spine	7	30
3641	shoulders	weighted	http://d205bpvrqc9yn1.cloudfront.net/3641.gif	weighted kneeling step with swing	delts	6	25
3644	upper legs	weighted	http://d205bpvrqc9yn1.cloudfront.net/3644.gif	weighted lunge with swing	glutes	9	10
3286	back	weighted	http://d205bpvrqc9yn1.cloudfront.net/3286.gif	weighted muscle up	lats	10	5
3312	back	weighted	http://d205bpvrqc9yn1.cloudfront.net/3312.gif	weighted muscle up (on bar)	lats	4	25
3290	back	weighted	http://d205bpvrqc9yn1.cloudfront.net/3290.gif	weighted one hand pull up	lats	8	25
840	waist	weighted	http://d205bpvrqc9yn1.cloudfront.net/0840.gif	weighted overhead crunch (on stability ball)	abs	5	5
841	back	weighted	http://d205bpvrqc9yn1.cloudfront.net/0841.gif	weighted pull-up	lats	3	25
844	shoulders	weighted	http://d205bpvrqc9yn1.cloudfront.net/0844.gif	weighted round arm	delts	5	20
846	waist	weighted	http://d205bpvrqc9yn1.cloudfront.net/0846.gif	weighted russian twist	abs	4	25
845	waist	weighted	http://d205bpvrqc9yn1.cloudfront.net/0845.gif	weighted russian twist (legs up)	abs	8	20
2371	waist	weighted	http://d205bpvrqc9yn1.cloudfront.net/2371.gif	weighted russian twist v. 2	abs	8	30
847	upper arms	medicine ball	http://d205bpvrqc9yn1.cloudfront.net/0847.gif	weighted seated bicep curl  (on stability ball)	biceps	8	30
849	waist	weighted	http://d205bpvrqc9yn1.cloudfront.net/0849.gif	weighted seated twist (on stability ball)	abs	6	10
850	waist	weighted	http://d205bpvrqc9yn1.cloudfront.net/0850.gif	weighted side bend (on stability ball)	abs	1	25
851	upper legs	weighted	http://d205bpvrqc9yn1.cloudfront.net/0851.gif	weighted sissy squat	quads	8	25
852	upper legs	weighted	http://d205bpvrqc9yn1.cloudfront.net/0852.gif	weighted squat	glutes	9	25
853	upper arms	weighted	http://d205bpvrqc9yn1.cloudfront.net/0853.gif	weighted standing curl	biceps	3	10
854	lower arms	weighted	http://d205bpvrqc9yn1.cloudfront.net/0854.gif	weighted standing hand squeeze	forearms	9	30
3313	chest	weighted	http://d205bpvrqc9yn1.cloudfront.net/3313.gif	weighted straight bar dip	pectorals	6	15
3642	upper legs	weighted	http://d205bpvrqc9yn1.cloudfront.net/3642.gif	weighted stretch lunge	glutes	7	30
856	chest	weighted	http://d205bpvrqc9yn1.cloudfront.net/0856.gif	weighted svend press	pectorals	9	30
1754	upper arms	weighted	http://d205bpvrqc9yn1.cloudfront.net/1754.gif	weighted three bench dips	triceps	6	30
1755	upper arms	weighted	http://d205bpvrqc9yn1.cloudfront.net/1755.gif	weighted tricep dips	triceps	2	20
1767	upper arms	weighted	http://d205bpvrqc9yn1.cloudfront.net/1767.gif	weighted triceps dip on high parallel bars	triceps	5	5
857	waist	wheel roller	http://d205bpvrqc9yn1.cloudfront.net/0857.gif	wheel rollerout	abs	7	10
3637	cardio	body weight	http://d205bpvrqc9yn1.cloudfront.net/3637.gif	wheel run	cardiovascular system	5	25
1429	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1429.gif	wide grip pull-up	lats	2	20
1367	back	body weight	http://d205bpvrqc9yn1.cloudfront.net/1367.gif	wide grip rear pull-up	lats	4	15
1311	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/1311.gif	wide hand push up	pectorals	8	5
2363	chest	body weight	http://d205bpvrqc9yn1.cloudfront.net/2363.gif	wide-grip chest dip on high parallel bars	pectorals	4	20
858	waist	body weight	http://d205bpvrqc9yn1.cloudfront.net/0858.gif	wind sprints	abs	9	5
1604	upper legs	body weight	http://d205bpvrqc9yn1.cloudfront.net/1604.gif	world greatest stretch	hamstrings	6	25
1428	lower arms	body weight	http://d205bpvrqc9yn1.cloudfront.net/1428.gif	wrist circles	forearms	2	25
859	lower arms	weighted	http://d205bpvrqc9yn1.cloudfront.net/0859.gif	wrist rollerer	forearms	1	15
\.


--
-- Name: exercises_id_seq; Type: SEQUENCE SET; Schema: public; Owner: workouts
--

SELECT pg_catalog.setval('public.exercises_id_seq', 1, false);


--
-- Name: exercises exercises_pkey; Type: CONSTRAINT; Schema: public; Owner: workouts
--

ALTER TABLE ONLY public.exercises
    ADD CONSTRAINT exercises_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

