# lucid


[Infra Tech Test - Google Docs](https://docs.google.com/document/d/1L-6EtftywQpkXodURnKG_OaAUQKVF2cuZ4JdKzHXiT8/edit#)

Option 2: Infrastructure Deployment

* How would a future deployment know where to obtain the load balancer’s DNS name if it wanted to use this service?

- you will need to perform this command

```
Terminal$:terraform output lb_address
"my-app-alb-1657023003.us-east-1.elb.amazonaws.com"
```

* What aspects need to be considered to make the code work in a CD pipeline (how does it successfully and safely get into production)?

- I will come up with an answer. 


* Two things I didn't finish: autoscalling and ec2 role for RDS. But I added other small features to the code.
