
set xrange [0:50]
set xlabel 'Depth (cm)'
set ylabel 'Total Accumulated Dose or Kerma (cGy)'

plot 'PDD2.plot' \
     u (0.25+0.5*$1):(($1 == 0 ? 2.0*(($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17+$18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33+$34+$35+$36+$37+$38+$39+$40+$41+$42+$43+$44+$45+$46+$47+$48+$49+$50+$51+$52+$53+$54+$55+$56+$57+$58+$59+$60+$61+$62+$63+$64+$65+$66+$67+$68+$69+$70+$71+$72+$73+$74+$75+$76+$77+$78+$79+$80+$81+$82+$83+$84+$85+$86+$87+$88+$89+$90+$91+$92+$93+$94+$95+$96+$97+$98+$99)/99.0) : (($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17+$18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33+$34+$35+$36+$37+$38+$39+$40+$41+$42+$43+$44+$45+$46+$47+$48+$49+$50+$51+$52+$53+$54+$55+$56+$57+$58+$59+$60+$61+$62+$63+$64+$65+$66+$67+$68+$69+$70+$71+$72+$73+$74+$75+$76+$77+$78+$79+$80+$81+$82+$83+$84+$85+$86+$87+$88+$89+$90+$91+$92+$93+$94+$95+$96+$97+$98+$99)/99.0))*(1.28E-7)) w lines title 'Depth Dose', \
  'PDK.plot' \
     u (0.25+0.5*$1):(($1 == 0 ? 2.0*(($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17+$18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33+$34+$35+$36+$37+$38+$39+$40+$41+$42+$43+$44+$45+$46+$47+$48+$49+$50+$51+$52+$53+$54+$55+$56+$57+$58+$59+$60+$61+$62+$63+$64+$65+$66+$67+$68+$69+$70+$71+$72+$73+$74+$75+$76+$77+$78+$79+$80+$81+$82+$83+$84+$85+$86+$87+$88+$89+$90+$91+$92+$93+$94+$95+$96+$97+$98+$99)/99.0) : (($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17+$18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33+$34+$35+$36+$37+$38+$39+$40+$41+$42+$43+$44+$45+$46+$47+$48+$49+$50+$51+$52+$53+$54+$55+$56+$57+$58+$59+$60+$61+$62+$63+$64+$65+$66+$67+$68+$69+$70+$71+$72+$73+$74+$75+$76+$77+$78+$79+$80+$81+$82+$83+$84+$85+$86+$87+$88+$89+$90+$91+$92+$93+$94+$95+$96+$97+$98+$99)/99.0))*(1.28E-7)) w lines title 'Depth Kerma'


set term post enhanced color
set output 'Dose_Kerma_comparison.ps'
replot
set output
set term pop
