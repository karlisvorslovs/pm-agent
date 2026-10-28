# A PRD request with almost nothing in it

What happens when the input is thin. Instead of inventing a PRD, the skill asks the five questions it needs answered, and offers a draft with [TBC] placeholders if the user would rather start there.

- **Role:** Product manager (`/role product`)
- **Skill:** `/prd`
- **Run:** Claude Code 2.1.310, 28 Oct 2026. Names and companies are invented.

## Prompt

```text
/prd referral programme
```

## Output

Before I write the PRD I need a few answers. The project folder has no research, metrics or earlier PRDs, only the role config. "Referral programme" is also a solution, and a PRD has to start from the problem it solves. Without that, the evidence and the success metric would be guesses.

1. **What problem does this solve, and for whom?** For example: acquisition costs are too high, a channel has stalled, or happy customers already recommend you but nothing captures it. Which product is this for, and who would refer whom (customers to customers, or users to their company)? Roughly how many customers or users do you have now?
2. **How do you know?** What's the source: acquisition or CAC data, word-of-mouth signups you're already seeing, NPS or "how did you hear about us" answers, customers asking for it, a competitor doing it, or a hunch?
3. **Which number should move, and what is it today?** For example: new signups or paid customers per month from referrals, CAC, or the share of new customers who came by word of mouth. Is there a target and a date?
4. **What is fixed?** A launch date, team size, platform, budget for rewards, or rules such as tax, anti-fraud or consumer law on incentives in your markets.
5. **What has already been decided, and by whom?** For example: the reward type (credit, cash, discount, extended trial), one-sided or two-sided rewards, or a referral tool you've already chosen.

If you'd rather see a draft now, say "just draft it". I'll write [TBC] in every gap, put the evidence strength as "None given", set the status to "Not ready for build" and list my assumptions at the end.
