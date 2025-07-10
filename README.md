# Aurora Global Database Workshop

This workshop teaches you how to implement Amazon Aurora Global Database for multi-region applications with high availability and disaster recovery capabilities.

## Workshop Overview

In this hands-on workshop, you will:

1. **Learn Aurora Global Database concepts** - Understand the architecture and benefits
2. **Set up multi-region infrastructure** - Create VPC and EC2 instances in two regions
3. **Create Primary Aurora Cluster** - Set up the master database cluster
4. **Implement Global Database** - Add secondary region and configure replication
5. **Deploy Multi-Region Application** - Deploy a sample Java application across regions
6. **Test Failover Scenarios** - Practice disaster recovery procedures
7. **Clean up Resources** - Properly remove all created resources

## Architecture

```
Primary Region (ap-southeast-1)          Secondary Region (us-west-2)
┌─────────────────────────────┐         ┌─────────────────────────────┐
│  Primary Aurora Cluster     │         │  Secondary Aurora Cluster   │
│  ┌─────────────────────────┐│         │  ┌─────────────────────────┐│
│  │     Writer Instance     ││   ====> │  │    Reader Instance      ││
│  └─────────────────────────┘│         │  └─────────────────────────┘│
│  ┌─────────────────────────┐│         │  ┌─────────────────────────┐│
│  │     Reader Instance     ││         │  │    Reader Instance      ││
│  └─────────────────────────┘│         │  └─────────────────────────┘│
└─────────────────────────────┘         └─────────────────────────────┘
```

## Prerequisites

- AWS Account with appropriate permissions
- Basic knowledge of AWS services (VPC, EC2, RDS)
- Understanding of database concepts
- Familiarity with command line interface

## Estimated Time

- **Total Duration**: 3-4 hours
- **Setup**: 45 minutes
- **Aurora Configuration**: 60 minutes
- **Application Deployment**: 90 minutes
- **Testing & Cleanup**: 45 minutes

## Estimated Cost

- **Aurora Serverless v2**: ~$20-30 for the workshop duration
- **EC2 Instances**: ~$5-10 for t2.micro instances
- **Data Transfer**: ~$2-5 for cross-region replication
- **Total Estimated Cost**: $30-50 USD

{{% notice warning %}}
Remember to clean up all resources after completing the workshop to avoid ongoing charges.
{{% /notice %}}

## Getting Started

### Option 1: View Online
The workshop is available as a static website. Build and serve it locally:

```bash
# Navigate to workshop directory
cd "TranVietHung-Workshop/RDS Multi-Master Aurora với Global Database"

# Build the workshop site
./build.sh

# Serve locally
hugo server -D
```

Then open http://localhost:1313 in your browser.

### Option 2: Follow Markdown Files
You can also follow the workshop by reading the markdown files directly in the `content/` directory.

## Workshop Structure

```
content/
├── 1-introduce/          # Introduction to Aurora Global Database
├── 2-prerequiste/        # Prerequisites and setup
├── 3-primary-cluster/    # Create primary Aurora cluster
├── 4-global-database/    # Set up Global Database
├── 5-deploy-app/         # Deploy multi-region application
├── 6-test-failover/      # Test failover scenarios
└── 7-cleanup/            # Clean up resources
```

## Languages

This workshop is available in:
- English
- Vietnamese (Tiếng Việt)

## Support

If you encounter any issues or have questions:
1. Check the troubleshooting section in each module
2. Review AWS documentation for Aurora Global Database
3. Join the [AWS Study Group](https://www.facebook.com/groups/awsstudygroupfcj/) for community support

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests to improve this workshop.

## License

This workshop is provided under the MIT License. See LICENSE file for details.

---

**Happy Learning!** 🚀
