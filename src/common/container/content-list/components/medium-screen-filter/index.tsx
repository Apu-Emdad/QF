import { MuiFilterAlt, MuiExpandMore } from 'app/libs/mui-icons';
import {
  MuiBox, MuiButton, MuiContainer, MuiDrawer, MuiTypography, MuiAccordion, MuiAccordionDetails, MuiAccordionSummary
} from 'app/libs/mui-lib';
import styled from '@emotion/styled';
import { useState } from 'react';

const MediumScreenFilter = () => {
  const [drawerOpen, setDrawerOpen] = useState(false);
  const toggleDrawer = () => {
    setDrawerOpen((prev) => (!prev));
  };

  /* ==== Styled Component Starts ==== */
  const Wrapper = styled(MuiContainer)({

  });
  const TitleContainer = styled(MuiBox)({
    display: 'flex',
    justifyContent: 'space-between',
    alignItems: 'center'
  });
  const Title = styled(MuiTypography)({
    fontSize: '18px',
    fontWeight: 'bold'
  });
  const ClearText = styled(MuiTypography)({
    fontSize: '18px',
    fontWeight: 'bold',
    color: '#DA291C'
  });
  /* ==== Styled Component Ends ==== */

  return (
    <div>
      <MuiButton variant='contained' color='error' onClick={toggleDrawer} sx={{ width: '100%', my: '10px' }}>
        <MuiFilterAlt />
      </MuiButton>
      <MuiDrawer open={drawerOpen} onClose={toggleDrawer} anchor="bottom">
        <Wrapper>
          <TitleContainer>
            <Title variant="body2">Filters</Title>
            <MuiButton> <ClearText>Clear All</ClearText></MuiButton>
          </TitleContainer>

        </Wrapper>
      </MuiDrawer>
    </div>
  );
};

export default MediumScreenFilter;