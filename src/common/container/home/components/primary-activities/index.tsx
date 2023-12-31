import dynamic from 'next/dynamic';

import styled from '@emotion/styled';

import { MuiTypography, MuiContainer, MuiDivider, MuiGrid } from 'app/libs/mui-lib';

import { PrimaryActivitiesCardComponent } from '../../components';

const PrimaryActivities = () => {
  const cards = [1, 2, 3, 4, 5, 6, 7, 8];
  /* ==== Styled Component === */

  const Title = styled(MuiTypography)({
    fontSize: '24px',
    fontWeight: 'bold',
    color: '#000'
  });
  /* ==== Styled Component === */

  return (
    <MuiContainer sx={{ padding: '70px 0px' }}>
      <Title>Primary Activities</Title>
      <MuiDivider />
      <MuiGrid container spacing={2} marginTop="26px" padding="0px 10px">
        {cards.map((card) => (
          <PrimaryActivitiesCardComponent key={card} />
        ))}
      </MuiGrid>
    </MuiContainer>
  );
};

export default PrimaryActivities;
